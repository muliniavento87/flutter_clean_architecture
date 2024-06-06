
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/widgets/book_card_shop.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'shop_list_vm.dart';


class ShopList extends ConsumerWidget {
    // Se ricevessimo una var stringa "s" da fuori
    //final String s;
    //ShopList(this.s, {super.key});

    ShopList({super.key});

    @override
    Widget build(BuildContext context, WidgetRef ref) {
        // Se ricevessimo una var stringa "s" da fuori che vogliamo mettere nello state
        //final vm = ref.read(shopListProvider(s).notifier);
        //final state = ref.watch(shopListProvider(s));

        final vm = ref.read(shopListProvider.notifier);
        final state = ref.watch(shopListProvider);

        return ListView.builder(
            itemCount: state.catalogoShop.length,
            itemBuilder: (context, index) => BookCardShop(state.catalogoShop[index])
        );
    }
}
    