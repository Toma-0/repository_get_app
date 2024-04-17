// ignore_for_file: lines_longer_than_80_chars

class I10n {
  factory I10n() => _instance ??= I10n._();
  I10n._();
  static I10n? _instance;

  //title:ヘッダーに表示されるテキスト
  String get titleHome => 'Flutter Demo Home Page';

  //label:ボタンなどに使用される機能や状態を指すテキスト
  String get labelSearch => 'Search';
  String get labelThemeModeDark => 'Dark Mode';
  String get labelThemeModeLight => 'Light Mode';
  String get labelThemeModeSystem => 'Match system settings';
  String get labelUserInfo => 'User Information';
  String get labelLangageJa => 'Japanese';
  String get labelLanguageKo => 'Korean';
  String get labelLanguageZh => 'Chinese';
  String get labelLanguageEn => 'English';
  String get labelRepositoryNotFound => 'Repository not found';
  String get labelErrorOccurred => 'An error has occurred';

  //message:説明等に使用されるテキスト
  String get messageSelectColorThemeMode => 'Please select a color theme';
  String get messageSearchingAgain =>
      'Please try searching again using the following method\n1.Change the search words\n2.Make sure there are no misspellings';
  String get messageWaitMoment =>
      'Please wait a moment and try searching again.';
}
