class Validator {
  static bool _require(String val) {
    if (val == "") {
      return false;
    }
    return true;
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

  static bool _match(String? val, String? target) {
    if (val == null) {
      return false;
    }
    if (val == target) {
      return true;
    }
    return false;
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

  static bool passwordConfirmation(String? origin, String? target) {
    return _match(origin, target);
  }

  static bool name(String val) {
    return _require(val) && _range(val, max: 10);
  }

  static bool birthday(DateTime? val) {
    if (val != null) {
      return true;
    }
    return false;
  }

  static bool id(String val) {
    return _require(val) && _range(val, max: 20);
  }
}
