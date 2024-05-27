const express = require('express');
const http = require('http');
const app = express();
const path = require('path');
const Core = require('./db/db');

const PORT = 4000;


// Serve file statici nella ROOT (es. un sito web)
//app.use(express.static(path.join(__dirname, 'public/build')));

// Configurazione richieste CORS (Cross-Origin Resource Sharing)
// valide solo per le richieste ricevute da Web Browser
app.use((req, res, next) => {
    // ***
    //  https://expressjs.com/en/resources/middleware/cors.html
    // ***

    // Header che specifica le sorgenti ammesse per le chiamate da client a server:
    //  '*'                         => tutte
    //  'https://www.section.io'    => solo da 'https://www.section.io'
    //  più valori vanno separati da ","
    res.header(
        'Access-Control-Allow-Origin',
        '*'
    );
    // Header che specifica gli headers ammessi dal client (anche inventati\custom)
    // Se ne mandi uno non in lista => CORS Error
    res.header(
        'Access-Control-Allow-Headers',
        'Origin, X-Requested-With, Content-Type, Accept, Authorization'
    );
    // Specifica se il server consentirà l'invio di credenziali (come cookie,
    // autenticazioni HTTP o credenziali client-side) in una richiesta da
    // un'altra origine (dominio).
    // Se "Access-Control-Allow-Credentials" => true, il server autorizza l'invio
    // di credenziali nelle richieste CORS. Questo è utile in scenari in cui si
    // desidera consentire l'accesso a risorse protette o a dati sensibili da
    // un'applicazione web situata su un dominio diverso.
    res.header(
        'Access-Control-Allow-Credentials',
        'false'
    );

    next();
});

// Abilita la ricezione di un body JSON nella POST
app.use(express.json());

app.listen(PORT, '0.0.0.0', () => {
    console.log('Server started on port ' + PORT);
});

// Inizializza il database se non esistesse
Core.insert_default();


app.get('/', (req, res) => {
    (async () => {
        try {
            // esito autorizzazione ok
            res.status(200).send("API root /");
        }
        catch (err) {
            console.log(err);
            res.status(400).send("Error");
        }
    })();
});


/// Request con operazioni che richiedono autorizzazione (con login)
///     http://localhost:4000/test_auth_get?prova=1&test=2
app.get('/magazzino/catalogo', (req, res) => {
    (async () => {
        try {
            // esito autorizzazione ok
            /*
            res.status(200).send({
                info: "test GET ok",
                headers: req.headers,
                params: req.params,
                query: req.query,
                payload: req.body,
                data: null
            });
            */
            // puoi settare un header nella risposta
            /*
            res.set({
                'Canew': 'ciao deh'
            })
            */

            res.status(200).send(
                await Core.getCatalogoMagazzino()
            );
        }
        catch (err) {
            console.log(err);
            res.status(400).send("Error");
        }
    })();
});


//
app.get('/shop/catalogo', (req, res) => {
    (async () => {
        try {
            res.status(200).send(
                await Core.getCatalogoShop()
            );
        }
        catch (err) {
            console.log(err);
            res.status(400).send("Error");
        }
    })();
});


/// Request con operazioni che richiedono autorizzazione (con login)
///     http://localhost:4000/test_auth_post?info=3
app.post('/catalogo', (req, res) => {
    /*
        curl --location --request POST 'http://localhost:4000/test_auth_post?info=3' \
        --header 'Authorization: 1f789b3e730eadf0e99c2ac40c8e6c'
    */
    (async () => {
        try {
            // esito autorizzazione ok
            res.status(200).send({
                info: "test POST catalogo ok",
                headers: req.headers,
                params: req.params,
                query: req.query,
                payload: req.body,
                data: null
            });
        }
        catch (err) {
            console.log(err);
            res.status(400).send("Error");
        }
    })();
});

