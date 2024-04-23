part of 'home_screen.dart';

class HomeAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (ref.watch(homeScreenNotifierProvider).toggleShowSearchFieldWidgets) {
      return const SearchFieldAppBar();
    }

    return const ShowTitleAppBar();
  }

  @override
  Size get preferredSize => const Size.fromHeight(44);
}

class SearchFieldAppBar extends ConsumerWidget {
  const SearchFieldAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: TextField(
        decoration: InputDecoration(
          icon: const Icon(Icons.search),
          hintText:
              AppLocalizations.of(context)?.labelSearch ?? I10n().labelSearch,
        ),
        onChanged: (text) {
          ref.read(homeScreenNotifierProvider.notifier).changeSerchWord(text);
          ref.read(homeScreenNotifierProvider.notifier).initStateSearchList();
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            ref.read(homeScreenNotifierProvider.notifier).changeSerchWord('');
            ref.read(homeScreenNotifierProvider.notifier).initStateSearchList();

            ref.read(homeScreenNotifierProvider.notifier).changeSearchRelated();
          },
        ),
      ],
    );
  }
}

class ShowTitleAppBar extends ConsumerWidget {
  const ShowTitleAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: Text(
        AppLocalizations.of(context)?.titleHomeScreen ?? //
            I10n().titleHome,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () => ref
              .read(homeScreenNotifierProvider.notifier)
              .changeSearchRelated(),
        ),
      ],
    );
  }
}
