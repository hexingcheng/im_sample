import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:onlylive/domain/repository/error.dart';

class APIClient {
  APIClient(this._host);
  final String _host;

  Uri _parse(String _path) => Uri.parse("$_host/$_path");

  ClientError _clientError(http.Response response) {
    final jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
    return ClientError(
        message: jsonResponse["message"] as String? ?? "",
        code: jsonResponse["code"] as String? ?? "");
  }

  Future<T> get<T>(String path,
      {Map<String, String>? headers,
      T Function(Map<String, dynamic>)? fromJson}) async {
    final res = await http.get(
      _parse(path),
      headers: headers,
    );

    if (400 <= res.statusCode) {
      throw _clientError(res);
    }

    return decode(res, fromJson);
  }

  Future<T> put<T>(String path,
      {Map<String, String>? headers,
      Object? body,
      T Function(Map<String, dynamic>)? fromJson}) async {
    final res = await http.put(
      _parse(path),
      body: jsonEncode(body),
      headers: headers,
    );

    if (400 <= res.statusCode) {
      throw _clientError(res);
    }

    return decode(res, fromJson);
  }

  Future<T> post<T>(String path,
      {Map<String, String>? headers,
      Object? body,
      T Function(Map<String, dynamic>)? fromJson}) async {
    final res = await http.post(
      _parse(path),
      body: jsonEncode(body),
      headers: headers,
    );

    if (400 <= res.statusCode) {
      throw _clientError(res);
    }

    return decode(res, fromJson);
  }

  T decode<T>(http.Response res, T Function(Map<String, dynamic>)? fromJson) {
    final responseBody = utf8.decode(res.bodyBytes);
    final jsonResponse = jsonDecode(responseBody) as Map<String, dynamic>;
    if (fromJson != null) {
      return fromJson(jsonResponse);
    }
    return jsonResponse as T;
  }
}
