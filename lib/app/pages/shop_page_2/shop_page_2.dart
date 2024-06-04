
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/widgets/book_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'shop_page_2_vm.dart';


class ShopPage2 extends ConsumerWidget {
    // Se ricevessimo una var stringa "s" da fuori
    //final String s;
    //ShopPage2(this.s, {super.key});

    ShopPage2({super.key});

    @override
    Widget build(BuildContext context, WidgetRef ref) {
        // Se ricevessimo una var stringa "s" da fuori che vogliamo mettere nello state
        //final vm = ref.read(shopPageProvider(s).notifier);
        //final state = ref.watch(shopPageProvider(s));

        final vm = ref.read(shopPage2Provider.notifier);
        final state = ref.watch(shopPage2Provider);

        //vm.initListeners(ref);

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
                                ElevatedButton(
                                    onPressed: () {
                                        //vm.getCatalogoShop();
                                    },
                                    child: const Text('Load Catalogo Shop')
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
    