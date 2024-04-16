part of 'home_screen.dart';

class HomeScaffold extends ConsumerWidget {
  const HomeScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: ref.watch(homeScreenNotifierProvider).toggleSearchRelatedWidgets
            ? TextField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.search),
                  hintText: AppLocalizations.of(context)?.labelSearch ??
                      I10n().labelSearch,
                ),
              )
            : Text(
                AppLocalizations.of(context)?.titleHomeScreen ?? //
                    I10n().titleHome,
              ),
        actions: [
          ref.watch(homeScreenNotifierProvider).toggleSearchRelatedWidgets
              ? IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () => ref
                      .watch(homeScreenNotifierProvider.notifier)
                      .changeSearchRelated(),
                )
              : IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () => ref
                      .watch(homeScreenNotifierProvider.notifier)
                      .changeSearchRelated(),
                ),
        ],
      ),
      drawer: const Drawer(),
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
