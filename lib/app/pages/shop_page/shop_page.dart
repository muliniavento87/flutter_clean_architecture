import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/widgets/cart_badge/cart_badge.dart';
import 'package:flutter_clean_architecture/app/widgets/shop_list/shop_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'shop_page_vm.dart';


class ShopPage extends ConsumerWidget {
    static String pagePath = "/";

    ShopPage({super.key});

    @override
    Widget build(BuildContext context, WidgetRef ref) {

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
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
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
                              //vm.getCatalogoShop();
                              vm.getCatalogoShopRemovingCart();
                            },
                            child: const Text('Load Catalogo Shop')
                        ),
                      ],
                    ),
                    Container(
                      height: 24,
                      color: Colors.transparent,
                    ),
                    Expanded(
                      child: ShopList()
                    )
                  ],
                ),
            )
        );
    }
}
    