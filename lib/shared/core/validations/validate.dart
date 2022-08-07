class ValidatesService {
  static String? email(String value) {
    RegExp regExp = RegExp("[a-z0-9]+@[a-z]+.[a-z]{2,3}", caseSensitive: false);
    final result = regExp.hasMatch(value);
    if (!result) {
      return 'Email Invalido!';
    }
    return null;
  }

  static String? password(String value) {
    if (value.length < 3) {
      return 'Senha Ivalida';
    }
    return null;
  }

  static String? name(String value) {
    if (value.isEmpty) {
      return 'Digite seu nome!';
    }
    return null;
  }
}
