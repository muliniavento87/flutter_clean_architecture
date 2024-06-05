import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/pages/shop_page_2/shop_page_2.dart';
import 'package:flutter_clean_architecture/app/widgets/book_card.dart';
import 'package:flutter_clean_architecture/app/widgets/cart_badge/cart_badge.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'shop_page_vm.dart';


class ShopPage extends ConsumerWidget {
    // Se ricevessimo una var stringa "s" da fuori
    //final String s;
    //ShopPage(this.s, {super.key});
    static String pagePath = "/";

    ShopPage({super.key});

    @override
    Widget build(BuildContext context, WidgetRef ref) {
        // Se ricevessimo una var stringa "s" da fuori che vogliamo mettere nello state
        //final vm = ref.read(shopPageProvider(s).notifier);
        //final state = ref.watch(shopPageProvider(s));

        final vm = ref.read(shopPageProvider.notifier);
        final state = ref.watch(shopPageProvider);

        return Scaffold(
            appBar: AppBar(
                title: const Text("Shop Page"),
            ),
            body: (state.isLoading) ?
            const Center(
                child: CircularProgressIndicator(),
            ) :  Center(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    child: CircleAvatar(
                                      minRadius: 16,
                                      maxRadius: 16,
                                      child: Icon(Icons.remove),
                                    ),
                                    onTap: () {
                                      vm.removeBookFromCart();
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: GestureDetector(
                                      child: CircleAvatar(
                                        minRadius: 16,
                                        maxRadius: 16,
                                        child: Icon(Icons.add),
                                      ),
                                      onTap: () {
                                        vm.addBookFromCart();
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                            CartBadge(),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {
                              vm.switchTheme();
                            },
                            child: const Text('Switch Theme')
                        ),
                        ElevatedButton(
                            onPressed: () {
                              vm.getCatalogoShop();
                            },
                            child: const Text('Load Catalogo Shop')
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ShopPage2()));
                            },
                            child: const Text('NAV')
                        ),
                      ],
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: state.catalogoShop.length,
                            itemBuilder: (context, index) => BookCard(state.catalogoShop[index])
                        )
                    )
                  ],
                ),
            )
        );
    }
}
    