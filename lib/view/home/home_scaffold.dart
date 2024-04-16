part of 'home_screen.dart';

class HomeScaffold extends ConsumerWidget {
  const HomeScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const HomeAppBar(),
      drawer: Drawer(
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
                  ref
                      .read(homeScreenNotifierProvider.notifier)
                      .currentColorTheme(context),
                ),
                onTap: () => showDialog<Widget>(
                  context: context,
                  builder: (BuildContext context) => SimpleDialog(
                    title: Text(
                      AppLocalizations.of(context)
                              ?.messageSelectColorThemeMode ??
                          I10n().messageSelectColorThemeMode,
                    ),
                    children: [
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
                  ),
                ),
              ),
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            ref.watch(counterNotifierProvider.notifier).incrementCounter(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      body: const HomeBody(),
    );
  }
}
