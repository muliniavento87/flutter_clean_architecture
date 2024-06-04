import 'package:domain_module/models/book.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  Book book;

  BookCard(this.book, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // -- ID
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "ID: ",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        book.id.toString(),
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              // -- NAME
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "NOME: ",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        book.name,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              // -- PRICE
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "PREZZO: ",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        book.price.toString(),
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}