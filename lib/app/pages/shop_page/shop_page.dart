import 'package:flutter/material.dart';
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
                child: ElevatedButton(
                    onPressed: () {
                        vm.switchTheme();
                        //ref.read(_testVMTemplate.notifier).switchTheme();
                    },
                    child: Text('Switch Theme')),
            )
        );
    }
}
    