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
