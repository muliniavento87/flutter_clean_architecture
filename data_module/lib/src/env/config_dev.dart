import 'config.dart';

/// [Config] is the abstract class describing the configurations data
///
/// Each implementation is based on the environment
class ConfigDev implements Config {

  @override
  String get baseUrl => "http://10.0.2.2:4000/";
}