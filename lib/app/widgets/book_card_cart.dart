import 'package:data_module/data_module.dart';
import 'package:domain_module/models/book.dart';
import 'package:domain_module/usecases/remove_from_cart_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class BookCardCart extends ConsumerWidget {
  Book book;

  BookCardCart(this.book, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              GestureDetector(
                child: const CircleAvatar(
                  minRadius: 16,
                  maxRadius: 16,
                  child: Icon(Icons.remove),
                ),
                onTap: () => RemoveFromCartUsecase(ref.read(cartRepositoryProvider)).call(book),
              ),
              Expanded(
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
                              (book.id ?? -1).toString(),
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
            ],
          ),
        ),
      ),
    );
  }

}