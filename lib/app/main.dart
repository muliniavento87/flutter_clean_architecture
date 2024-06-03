import 'package:data_module/data_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'my_app.dart';

///
void appMain({List<Override>? overrides}) async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer(overrides: overrides ?? []);

  container.read(appConfigRepositoryProvider).init()
      .then((value) {
    runApp(UncontrolledProviderScope(container: container, child: MyApp()));
  });
}