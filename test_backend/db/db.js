const fs = require('fs');
const sqlite3 = require('sqlite3').verbose();


var connection = null;
const default_database = 'database.db';


/// --------------------------- Base ---------------------------
/// Base: Apri connessione verso il database
function open() {
    if (connection == null) {
        connection = new sqlite3.Database(default_database);
    }
}

/// Base: Chiudi connessione con il database
function close() {
    if (connection != null) {
        connection.close((err) => {
            if (err) {
                reject(err);
            }
        });
    }
}

/// Base: Avvia query (READ)
async function queryGetAll(queryStr, params = null) {
    /*
        - 'SELECT * FROM mytable'
    */
    open();

    return new Promise((resolve, reject) => {
        const lambda = (err, rows) => {
            if (err) {
                reject(err);
            } else {
                resolve(rows);
            }
        };

        if (params != null) {
            connection.all(queryStr, params, lambda);
        }
        else {
            connection.all(queryStr, lambda);
        }
    });
}

/// Base: Avvia query (non READ)
async function queryRun(queryStr, params = null) {
    /*
        - 'CREATE TABLE IF NOT EXISTS mytable (id INT, name TEXT)'
        - 'INSERT INTO mytable (id, name) VALUES (?, ?)'        [id, name]
        - 'UPDATE mytable SET name = ? WHERE id = ?'            [newName, id]
        - 'DELETE FROM mytable WHERE id = ?'                    [id]
    */
    open();

    return new Promise((resolve, reject) => {

        const fun = function (err) {
            if (err) {
                console.log(err.message);
                reject(err);
            } else {
                resolve(this.lastID);
            }
        }

        if (params != null) {
            connection.run(queryStr, params, fun);
        }
        else {
            connection.run(queryStr, fun);
        }
    });
}

///
function getRandom(minValue = 10, maxValue = 20) {
    return Math.floor(Math.random() * (maxValue - minValue + 1)) + minValue;
}

///
async function inserisciLibri(name_id, quanti, table) {
    //name TEXT(30) UNIQUE NOT NULL,
    await queryRun(
        `CREATE TABLE IF NOT EXISTS ` + table + ` (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT(30) NOT NULL,
            status INTEGER NOT NULL,
            price DOUBLE NOT NULL
        )`
    );

    for(var i=0;i<quanti;i++) {
        const status = 0;
        const price = getRandom();
        const name = name_id + " " + getRandom() + "-" + price;

        const sql = `INSERT INTO ` + table + ` (name, status, price) VALUES (?, ?, ?)`;
          connection.run(sql, [name, status, price], (err) => {
            if (err) {
              console.error(err);
              return;
            }
        });
    }
    console.log('Inseriti ' + quanti + " " + name_id);
}

///
async function insert_default() {
    const ELEMS = 20;

    // controllo che esista il file del database
    if (!fs.existsSync(default_database)) {
        console.log(`Database non trovato, procedo alla creazione e configurazione: ${default_database}`);
        try {

            // --------- magazzino ---------
            await inserisciLibri("Libro Magazzino", ELEMS, "catalogo_magazzino");
            await inserisciLibri("Libro Shop", ELEMS, "catalogo_shop");

        } catch (e) {
            console.log(e);
        }
    }
}


///
async function getCatalogoMagazzino() {
    try {
        return await queryGetAll(
            `SELECT *
                FROM catalogo_magazzino
            `
        );
    }
    catch (e) {
        console.log(e);
    }
    return [];
}

///
async function getCatalogoShop() {
    try {
        return await queryGetAll(
            `SELECT *
                FROM catalogo_shop
            `
        );
    }
    catch (e) {
        console.log(e);
    }
    return [];
}


module.exports = {
    open: open,
    close: close,
    queryGetAll: queryGetAll,
    queryRun: queryRun,
    insert_default: insert_default,
    getCatalogoMagazzino: getCatalogoMagazzino,
    getCatalogoShop: getCatalogoShop
}