part of 'home_screen.dart';

class HomeDrawer extends ConsumerWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //カラーテーマによって表示する文言を変更する
    // TODO(Toma-0): AppLocalizations.of(context)をcontextを読み込まなくても表示する方法を探す。
    // あった場合は、homeScreenNotifierに書きメソッドを移動させたい。
    String currentColorTheme() {
      switch (ref.watch(homeScreenNotifierProvider).colorThemeMode) {
        case ThemeMode.dark:
          return AppLocalizations.of(context)?.labelThemeModeDark ??
              I10n().labelThemeModeDark;
        case ThemeMode.light:
          return AppLocalizations.of(context)?.labelThemeModeLight ??
              I10n().labelThemeModeLight;
        case ThemeMode.system:
          return AppLocalizations.of(context)?.labelThemeModeSystem ??
              I10n().labelThemeModeSystem;
      }
    }

    return Drawer(
      child: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            DrawerHeader(
              child: Text(
                AppLocalizations.of(context)?.labelUserInfo ??
                    I10n().labelUserInfo,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings_brightness),
              title: Text(
                currentColorTheme(),
              ),
              onTap: () => showDialog<Widget>(
                context: context,
                builder: (BuildContext context) => const ShowThemeModeDialog(),
              ),
            ),
            // TODO(Toma-0): システムで設定されている言語の取得方法を考える
            ListTile(
              leading: const Icon(Icons.translate),
              title: Text(
                AppLocalizations.of(context)?.labelLangageJa ??
                    I10n().labelLangageJa,
              ),
              onTap: () {},
            ),
          ],
        ).toList(),
      ),
    );
  }
}

// TODO(Toma-0): switchなどを用いてもっと簡単に出しわけができないかを考える
class ShowThemeModeDialog extends ConsumerWidget {
  const ShowThemeModeDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SimpleDialog(
      title: Text(
        AppLocalizations.of(context)?.messageSelectColorThemeMode ??
            I10n().messageSelectColorThemeMode,
      ),
      children: [
        //カラーテーマをシステムに合わせる
        SimpleDialogOption(
          onPressed: () {
            ref
                .read(homeScreenNotifierProvider.notifier)
                .changeColorThemeSystem();
            Navigator.of(context).pop();
          },
          child: Text(
            AppLocalizations.of(context)?.labelThemeModeSystem ??
                I10n().labelThemeModeSystem,
          ),
        ),
        //カラーテーマをライトモードに合わせる
        SimpleDialogOption(
          onPressed: () {
            ref
                .read(homeScreenNotifierProvider.notifier)
                .changeColorThemeLight();
            Navigator.of(context).pop();
          },
          child: Text(
            AppLocalizations.of(context)?.labelThemeModeLight ??
                I10n().labelThemeModeLight,
          ),
        ),
        //カラーテーマをダークモードに合わせる
        SimpleDialogOption(
          onPressed: () {
            ref
                .read(homeScreenNotifierProvider.notifier)
                .changeColorThemeDark();
            Navigator.of(context).pop();
          },
          child: Text(
            AppLocalizations.of(context)?.labelThemeModeDark ??
                I10n().labelThemeModeDark,
          ),
        ),
      ],
    );
  }
}
