import 'package:onlylive/flavor.dart';
import 'package:yaml/yaml.dart';
import "package:flutter/services.dart" as service;

class Config {
  Config(YamlMap doc) {
    _app = App(doc["app"] as YamlMap);
    _tencent = Tencent(doc["tencent"] as YamlMap);
  }

  static App _app = App({} as YamlMap);
  static Tencent _tencent = Tencent({} as YamlMap);

  static Tencent get tencent => _tencent;
  static App get app => _app;
}

class App {
  App(YamlMap doc) {
    _host = doc["host"] as String;
    _configPath = doc["configPath"] as String;
    _imgixHost = doc["imgixHost"] as String;
    _gcsSourcePath = doc["gcsSourcePath"] as String;
  }

  late String _host;
  late String _configPath;
  late String _imgixHost;
  late String _gcsSourcePath;

  String get host => _host;
  String get configPath => _configPath;
  String get imgixHost => _imgixHost;
  String get gcsSourcePath => _gcsSourcePath;
}

class Tencent {
  Tencent(YamlMap doc) {
    _sdkAppId = doc["sdkAppId"] as int;
    _secretKey = doc["secretKey"] as String;
  }

  late int _sdkAppId;
  late String _secretKey;

  int get sdkAppId => _sdkAppId;
  String get secretKey => _secretKey;
}

Future<void> initConfig(Flavor flavor) async {
  final data =
      await service.rootBundle.loadString('env/${flavor.environment}.yaml');
  final doc = loadYaml(data) as YamlMap;
  Config(doc);
}
