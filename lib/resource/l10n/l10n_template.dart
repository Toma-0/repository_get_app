class I10n {
  factory I10n() => _instance ??= I10n._();
  I10n._();
  static I10n? _instance;

  //title:ヘッダーに表示されるテキスト
  String get titleHome => 'Flutter Demo Home Page';

  //label:ボタンなどに使用される機能を指すテキスト
  String get labelSearch => 'Search';

  //message:説明等に使用されるテキスト
  String get messagePushButtonManyTimes =>
      'You have pushed the button this many times:';
}
