import 'package:data_module/data_module.dart';
import 'package:data_module/src/datasources/shared_pref_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ----- Shared Area app -----

/// provider servizio di datasource shared_preferences
final sharedPrefDataSourceProvider = Provider<SharedPrefDataSource>((ref) {
  return SharedPrefImpl();
});