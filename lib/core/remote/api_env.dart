const _baseUrl = "base_url";

enum Environment { dev, prod }

Map<String, dynamic> _config = {};

void setEnvironment(Environment env) {
  switch (env) {
    case Environment.dev:
      _config = devConstants;
      break;
    case Environment.prod:
      _config = prodConstants;
      break;
  }
}

dynamic get apiBaseUrl {
  return _config[_baseUrl];
}

Map<String, dynamic> devConstants = {
  _baseUrl: "https://api.openweathermap.org/data/2.5",
};

Map<String, dynamic> prodConstants = {
  _baseUrl: "https://api.openweathermap.org/data/2.5",
};