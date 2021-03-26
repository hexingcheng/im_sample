class Validator {
  String? require(String? val, String label) {
    if (val == null) {
      return null;
    }
    if (val.isEmpty) {
      return "$labelを入力してください";
    }
  }

  String? isNumber(String? val) {
    if (val == null) {
      return null;
    }
    try {
      int.parse(val);
    } catch (e) {
      return "半角数字を入力してください";
    }
  }

  String? range(String? val, {int? min, int? max}) {
    if (val == null) {
      return null;
    }
    if (min != null && val.length < min) {
      return "$min文字以上で入力してください";
    } else if (max != null && val.length > max) {
      return "$max文字以下で入力してください";
    }
  }

  bool password(String? val) {
    if (val == null) {
      return false;
    }
    final result = range(val, min: 6, max: 20);
    if (result != null) {
      return false;
    }
    final str = val.split("");
    var existNumber = false;
    var existFullWidth = false;
    var existAlphabet = false;

    str.forEach((e) {
      existFullWidth = !RegExp(r"^([a-zA-Z0-9])").hasMatch(e);
      if (RegExp(r"([a-zA-Z])").hasMatch(e)) {
        existAlphabet = true;
      }
      final number = int.tryParse(e);
      if (number != null) {
        existNumber = true;
      }
    });
    if (existFullWidth) {
      return false;
    }
    return existNumber && existAlphabet;
  }

  bool match(String? val, String? target) {
    if (val == null) {
      return false;
    }
    if (val == target) {
      return true;
    }
    return false;
  }
}
