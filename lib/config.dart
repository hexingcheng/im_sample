import 'package:onlylive/flavor.dart';
import 'package:yaml/yaml.dart';
import "package:flutter/services.dart" as service;

class Config {
  Config(dynamic doc) {
    app = App(doc);
    tencent = Tencent(doc);
  }

  static App app = App(null);
  static Tencent tencent = Tencent(null);
}

class App {
  App(dynamic doc) {
    final app = doc["app"];
    host = app["host"] as String;
    configPath = app["configPath"] as String;
  }

  late String host;
  late String configPath;
}

class Tencent {
  Tencent(dynamic doc) {
    final tencent = doc["tencent"];
    sdkAppId = tencent["sdkAppId"] as int;
    secretKey = tencent["secretKey"] as String;
  }

  late int sdkAppId;
  late String secretKey;
}

Future<void> initConfig(Flavor flavor) async {
  final data =
      await service.rootBundle.loadString('env/${flavor.environment}.yaml');
  final doc = loadYaml(data);
  Config(doc);
}
