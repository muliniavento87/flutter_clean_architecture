import 'package:domain_module/usecases/change_theme_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:secondo_progetto/pages/homepage/homepage.dart';
import 'package:secondo_progetto/pages/magazzino/magazzino.dart';
import 'package:secondo_progetto/pages/shop/shop.dart';
import 'my_app_vm.dart';


///
void appMain() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(
        UncontrolledProviderScope(
            container: ProviderContainer(),
            child: const MyApp()
        )
    );
}


///
class MyApp extends ConsumerWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context, WidgetRef ref) {
        //final vm = ref.read(myAppProvider.notifier);
        final state = ref.watch(myAppProvider);

        return MaterialApp.router(
            title: 'Flutter Demo',
            theme: state.theme,
            routerConfig: _router,
        );
    }
}

///
final _router = GoRouter(
    routes: [
        GoRoute(
            path: Homepage.pagePath,
            builder: (context, state) => Homepage(),
        ),
        GoRoute(
            path: Magazzino.pagePath,
            builder: (context, state) => Magazzino(),
        ),
        GoRoute(
            path: Shop.pagePath,
            builder: (context, state) => Shop(),
        ),
    ],
);
    