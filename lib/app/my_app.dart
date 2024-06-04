import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/pages/shop_page/shop_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:data_module/data_module.dart';

///
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      //theme: ref.watch(_myAppVMProvider).isDark ? F.theme.darkThemeData : F.theme.themeData,
      //theme: ref.watch(darkMode(ref)) ? F.theme.darkThemeData : F.theme.themeData,
      theme: ref.watch(isDarkModeProvider) ? F.theme.darkThemeData : F.theme.themeData,
      routerConfig: _router,
    );
  }

}


///
final _router = GoRouter(
  routes: [
    GoRoute(
      path: ShopPage.pagePath,
      builder: (context, state) => ShopPage(),
    ),
    /*
    GoRoute(
      path: SecondTestPage.pagePath,
      builder: (context, state) => SecondTestPage(),
    )
    */
  ],
);