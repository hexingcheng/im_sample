class ClientError extends Error {
  ClientError({
    required this.message,
    required this.code,
  });
  String message;
  String code;
}
