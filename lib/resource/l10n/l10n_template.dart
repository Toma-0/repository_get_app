class I10n {
  factory I10n() => _instance ??= I10n._();
  I10n._();
  static I10n? _instance;

  String get titleHome => 'Flutter Demo Home Page';
  String get messagePushButtonManyTimes =>
      'You have pushed the button this many times:';
}
