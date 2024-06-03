[<- Back](../README.md)

# Scheletro Presentation Layer

# Main (entry points)
- lib/main_dev.dart
```
import 'package:data_module/data_module.dart';
import 'app/main.dart';

void main() async {
  F.appFlavor = Flavor.dev;
  appMain(overrides: []);
}
```
- lib/main_mock.dart
```
import 'package:data_module/data_module.dart';
import 'package:scaffolding_flutter_spindox/app/mock/mock_api_example_datasource_impl.dart';
import 'app/main.dart';

void main() async {
  F.appFlavor = Flavor.mock;
  appMain(overrides: [
    overrideInternalApiExampleDataSourceProvider(MockApiExampleDataSourceImpl()) // datasource override example
  ]);
}
```

# App
- lib/app/main.dart (il vero main dell'app)
```
import 'package:data_module/data_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'page/my_app/my_app_page.dart';

void appMain({List<Override>? overrides}) async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer(overrides: overrides ?? []);

  container.read(appConfigRepositoryProvider).init()
      .then((value) {
        runApp(UncontrolledProviderScope(container: container, child: MyApp()));
      });
}
```
- lib/app/my_app/ ()