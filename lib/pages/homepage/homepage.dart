import 'package:domain_module/usecases/change_theme_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:secondo_progetto/my_app/my_app_vm.dart';
import 'package:secondo_progetto/pages/magazzino/magazzino.dart';
import 'package:secondo_progetto/pages/shop/shop.dart';
import 'homepage_vm.dart';


class Homepage extends ConsumerWidget {
    static String pagePath = "/";
    // Se ricevessimo una var stringa "s" da fuori
    //final String s;
    //Homepage(this.s, {super.key});

    Homepage({super.key});

    @override
    Widget build(BuildContext context, WidgetRef ref) {

        final vm = ref.read(homepageProvider.notifier);
        final state = ref.watch(homepageProvider);

        return Scaffold(
            appBar: AppBar(),
            body: (state.isLoading) ?
            const Center(
                child: CircularProgressIndicator(),
            ) : Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      ElevatedButton(
                          onPressed: () => context.push(Magazzino.pagePath),
                          child: const Text("Page Magazzino")
                      ),
                      ElevatedButton(
                          onPressed: () => context.push(Shop.pagePath),
                          child: const Text("Page Shop")
                      ),
                      ElevatedButton(
                          onPressed: () => ref.read(myAppProvider.notifier).switchTheme(),
                          child: const Text("Switch tema")
                      )
                  ],
              ),
            )
        );
    }
}
    