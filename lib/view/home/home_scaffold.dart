part of 'home_screen.dart';

class HomeScaffold extends ConsumerWidget {
  const HomeScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: HomeAppBar(),
      drawer: HomeDrawer(),
      body: HomeBody(),
    );
  }
}
