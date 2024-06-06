import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/widgets/book_card_cart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'cart_page_vm.dart';


class CartPage extends ConsumerWidget {
    static String pagePath = "/cart_page";

    const CartPage({super.key});

    @override
    Widget build(BuildContext context, WidgetRef ref) {

        final vm = ref.read(cartPageProvider.notifier);
        final state = ref.watch(cartPageProvider);

        return Scaffold(
            appBar: AppBar(),
            body: (state.isLoading) ?
            const Center(
                child: CircularProgressIndicator(),
            ) : ListView.builder(
                itemCount: state.books.length,
                itemBuilder: (context, index) => BookCardCart(state.books[index])
            )
        );
    }
}
    