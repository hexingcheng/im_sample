import 'dart:convert';
import 'package:http/http.dart' as http;

class APIClient {
  APIClient(this._host);
  final String _host;

  Uri _parse(String _path) => Uri.parse("$_host/$_path");

  String accessToken = "x-api-jwt";

  Future<T> get<T>(String path,
      {Map<String, String>? headers,
      T Function(Map<String, dynamic>)? fromJson}) async {
    final res = await http.get(
      _parse(path),
    );
    return decode(res, fromJson);
  }

  Future<T> put<T>(String path,
      {Map<String, String>? headers,
      Object? body,
      T Function(Map<String, dynamic>)? fromJson}) async {
    try {
      final res = await http.put(
        _parse(path),
        body: jsonEncode(body),
      );
      return decode(res, fromJson);
    } catch (e) {
      rethrow;
    }
  }

  Future<T> post<T>(String path,
      {Map<String, String>? headers,
      Object? body,
      T Function(Map<String, dynamic>)? fromJson}) async {
    final res = await http.put(
      _parse(path),
      body: jsonEncode(body),
    );
    return decode(res, fromJson);
  }

  T decode<T>(http.Response res, T Function(Map<String, dynamic>)? fromJson) {
    if (fromJson != null) {
      final jsonResponse = jsonDecode(res.body) as Map<String, dynamic>;
      return fromJson(jsonResponse);
    }
    return res as T;
  }
}
