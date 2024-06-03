import 'package:data_module/data_module.dart';
import 'package:data_module/src/di/providers/di_app_config_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppConfigDataSourceImpl implements AppConfigDataSource {
  ProviderRef ref;
  AppConfigDataSourceImpl(this.ref);

  @override
  void setDarkMode(bool isDark) {
    final appC = ref.read(appConfigProvider.notifier);
    appC.state = appC.state.copyWith(isDark: isDark);
  }

  @override
  Provider<bool> getDarkMode() {
    return _isDarkModeProvider;
  }

  @override
  String getUrl() {
    final appC = ref.read(appConfigProvider.notifier);
    return appC.state.url;
  }

  @override
  Flavor getFlavor() {
    final appC = ref.read(appConfigProvider.notifier);
    return appC.state.flavor;
  }
}

final _isDarkModeProvider = Provider<bool>((ref) {
  return ref.watch(appConfigProvider).isDark;
});