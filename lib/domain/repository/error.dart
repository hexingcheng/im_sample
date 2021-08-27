class ApiError implements Exception {
  ApiError({
    required this.message,
    required this.code,
  });
  String message;
  String code;
}
