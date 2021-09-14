enum Environment {
  development,
  staging,
  production,
}

class Flavor {
  Flavor(this.environment);

  late String environment;

  Environment getValue() {
    switch (environment) {
      case "development":
        return Environment.development;
      case "staging":
        return Environment.staging;
      case "production":
        return Environment.production;
      default:
        throw ArgumentError("invalid environment");
    }
  }
}
