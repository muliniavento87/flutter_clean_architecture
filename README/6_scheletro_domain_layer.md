[<- Back](../README.md)

# Scheletro domain_module

# "domain_module/lib/repo/"
## "app_config_repository.dart"
Modelli astratti dei repository del data_module
- app_config_repository.dart (config app, es. tema)
```
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AppConfigRepository {
  Future<void> init();

  void updateTheme(bool isDark);

  Provider<bool> isDarkModeProvider();
}
```

# "domain_module/lib/usecases/"
## "get_theme_status_usecase.dart"
```
```
## "switch_theme_usecase.dart"
```
```