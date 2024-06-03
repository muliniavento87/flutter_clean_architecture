[<- Back](../README.md)

# Scheletro Data layer

# "data_module/lib/src/env/"
## "config.dart"
```
abstract class Config {
  final String baseUrl = "";
}
```
## "config_dev.dart"
```
import 'config.dart';

class ConfigDev implements Config {
  @override
  String get baseUrl => "https://google.com/"; //TODO
}
```
## "config_mock.dart"
```
import 'config.dart';

class ConfigMock implements Config {
  @override
  String get baseUrl => "https://google.com/"; //TODO
}
```
## "config_prod.dart"
```
import 'config.dart';

class ConfigProd implements Config {
  @override
  String get baseUrl => "https://google.com/"; //TODO
}
```

# "data_module/lib/src/flavors.dart"
```
import 'package:common_module/theme/app_theme.dart';
import 'package:common_module/theme/basic_theme.dart';
import 'package:data_module/src/env/config.dart';
import 'package:data_module/src/env/config_dev.dart';
import 'package:data_module/src/env/config_mock.dart';
import 'package:data_module/src/env/config_prod.dart';

enum Flavor { mock, dev, prod }

class F {
  static late Flavor appFlavor;

  static Config get config {
    switch (appFlavor) {
      case Flavor.mock:
        return ConfigMock();
      case Flavor.dev:
        return ConfigDev();
      case Flavor.prod:
        return ConfigProd();
    }
  }

  static BasicTheme get theme {
    //if (appFlavor == Flavor.prod)
    return AppTheme();
  }
}
```

# "data_module/lib/src/abstractions"
Modelli astratti del data_module
- a

# "data_module/lib/src/di/"
Dependency injections (providers di datasources e repositories)
## internals/di_app_config_provider.dart
Providers per servizi e datasources
```
import 'package:data_module/data_module.dart';
import 'package:data_module/src/datasources/app_config_datasource_impl.dart';
import 'package:data_module/src/di/providers/di_shared_pref_provider.dart';
import 'package:data_module/src/models/app_config_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


/// ----- Configurazioni App -----

/// provider con stato interno per gestire
final appConfigProvider = StateProvider((ref) =>
    AppConfigState(
        isDark: ref.read(sharedPrefDataSourceProvider).isCurrentThemeDark(),
        url: F.config.baseUrl,
        flavor: F.appFlavor));

/// provider servizio di datasource
final appConfigDataSourceProvider = Provider<AppConfigDataSource>((ref) {
  return AppConfigDataSourceImpl(ref);
});
```
## internals/di_shared_pref_provider.dart
Providers per servizi e datasources
```
import 'package:data_module/data_module.dart';
import 'package:data_module/src/datasources/shared_pref_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ----- Shared Area app -----

/// provider servizio di datasource shared_preferences
final sharedPrefDataSourceProvider = Provider<SharedPrefDataSource>((ref) {
  return SharedPrefImpl();
});
```
## data_module/lib/src/di_repository.dart
Repositories data_module esposti all'esterno
```
import 'package:data_module/src/di/providers/di_app_config_provider.dart';
import 'package:data_module/src/di/providers/di_shared_pref_provider.dart';
import 'package:data_module/src/repositories/app_config_repository_impl.dart';
import 'package:domain_module/repo/app_config_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Repositories del data_module (espongono
/// le risorse con i providers)

//to manage base app configuration
final appConfigRepositoryProvider = Provider<AppConfigRepository>((ref) {
  return AppConfigRepositoryImpl(
      ref,
      sharedPrefDataSource: ref.read(sharedPrefDataSourceProvider),
      appConfigDataSource: ref.read(appConfigDataSourceProvider)
  );
});
```

# "data_module/lib/src/repositories/"
Modelli implementati dei repository del data_module
## app_config_repository_impl.dart
Servizio di shared_preferences per tutta l'app
```
import 'package:data_module/src/abstraction/app_config_datasource.dart';
import 'package:data_module/src/abstraction/shared_pref_datasource.dart';
import 'package:domain_module/repo/app_config_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppConfigRepositoryImpl extends AppConfigRepository {
  SharedPrefDataSource sharedPrefDataSource;
  AppConfigDataSource appConfigDataSource;
  ProviderRef ref;

  AppConfigRepositoryImpl(this.ref, {required this.sharedPrefDataSource, required this.appConfigDataSource});

  @override
  Future<void> init() {
    return sharedPrefDataSource.init();
  }

  @override
  void updateTheme(bool isDark) {
    sharedPrefDataSource.saveThemeSelection(isDark);
    appConfigDataSource.setDarkMode(isDark);
  }

  @override
  Provider<bool> isDarkModeProvider() {
    return appConfigDataSource.getDarkMode();
  }
}
```

# "lib/src/constants/"
## "shared_preferences_key.dart"
```
class SharedPreferencesKey {
  static const String isThemeDark = 'isThemeDark';
}
```

# "lib/src/models/"
Modelli datasource e stati providers
## "app_config_state.dart"
```
import 'package:data_module/src/flavors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_config_state.freezed.dart';

@freezed
class AppConfigState with _$AppConfigState {
  const factory AppConfigState({
    required bool isDark,
    required String url,
    required Flavor flavor,
  }) = _AppConfigState;
}
```