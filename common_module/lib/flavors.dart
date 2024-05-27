import 'package:common_module/abstractions/app_theme.dart';
import 'package:common_module/theme/app_theme_impl.dart';
import 'env/config.dart';
import 'env/config_dev.dart';
import 'env/config_mock.dart';
import 'env/config_prod.dart';

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

  static AppTheme get theme {
    //if (appFlavor == Flavor.prod)
    return AppThemeImpl();
  }
}
