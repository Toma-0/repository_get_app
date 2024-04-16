part of 'home_screen.dart';

class HomeScaffold extends ConsumerWidget {
  const HomeScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const HomeAppBar(),
      drawer: const HomeDrawer(),
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
