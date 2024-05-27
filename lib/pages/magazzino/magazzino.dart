import 'package:common_module/flavors.dart';
import 'package:domain_module/usecases/get_catalogo_magazzino_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secondo_progetto/my_app/my_app_vm.dart';
import 'package:secondo_progetto/widgets/book_card.dart';
import 'magazzino_vm.dart';


class Magazzino extends ConsumerWidget {
    static String pagePath = "/magazzino";

    const Magazzino({super.key});

    @override
    Widget build(BuildContext context, WidgetRef ref) {

        final vm = ref.read(magazzinoProvider.notifier);
        final state = ref.watch(magazzinoProvider);

        return Scaffold(
            appBar: AppBar(title: Text(pagePath)),
            body: (state.isLoading) ?
            const Center(
                child: CircularProgressIndicator(),
            ) : Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => vm.getCatalogo(),
                        child: const Text("Refresh Content")
                    ),
                    ElevatedButton(
                      onPressed: () => ref.read(myAppProvider.notifier).switchTheme(),
                      child: const Text("Switch tema")
                    ),
                    Container(
                      height: 16.0,
                      color: F.theme.themeData.primaryColor,
                    ),
                    Expanded(
                        child: ListView.builder(
                          itemCount: state.books.length,
                          itemBuilder: (context, index) => BookCard(state.books[index])
                        )
                    )
                  ],
              ),
            )
        );
    }
}
    