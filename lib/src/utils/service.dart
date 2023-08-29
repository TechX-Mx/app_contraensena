import 'package:contraensena/src/enviroment/enviroment.dart';

class Service {
  static Future<dynamic> consulta(
      String url, String type, Map<String, String>? body) async {
    final String endpoint = '${Enviroment.apiURL}$url';

    print(endpoint);
  }
}
