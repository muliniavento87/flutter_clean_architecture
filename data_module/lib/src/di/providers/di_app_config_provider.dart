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