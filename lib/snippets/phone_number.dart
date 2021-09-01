String convertPhoneNumber(String number) {
  return "+81${number.replaceRange(0, 1, "")}";
}
