class Validator {
  String? require(String? val, String label) {
    if (val == null) {
      return null;
    }
    if (val.isEmpty) {
      return "$labelを入力してください";
    }
  }

  static bool _isNumber(String? val) {
    if (val == null) {
      return false;
    }
    try {
      int.parse(val);
      return true;
    } catch (e) {
      return false;
    }
  }

  static bool _range(String? val, {int? min, int? max}) {
    if (val == null) {
      return false;
    }
    if (min != null && val.length < min) {
      return false;
    } else if (max != null && val.length > max) {
      return false;
    }
    return true;
  }

  static bool phoneNumber(String? val) {
    final result1 = _range(val, min: 11, max: 11);
    final result2 = _isNumber(val);
    return result1 && result2;
  }

  static bool password(String? val) {
    if (val == null) {
      return false;
    }
    final range = _range(val, min: 6, max: 20);
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
    return existNumber && existAlphabet && range;
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
