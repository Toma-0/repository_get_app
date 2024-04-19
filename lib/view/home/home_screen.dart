import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/text_l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:repository_get_app/resource/l10n/l10n_template.dart';
import 'package:repository_get_app/resource/theme/color_theme.dart';
import 'package:repository_get_app/resource/theme/text_theme.dart';
import 'package:repository_get_app/view/component/card/repository_card.dart';
import 'package:repository_get_app/view/repository_detail/repository_detail_screen.dart';
import 'package:repository_get_app/view_model/api/graphql_client/graphql_client.dart';
import 'package:repository_get_app/view_model/api/repository_list/repository_list_notifier.dart';
import 'package:repository_get_app/view_model/home/home_screen_notifier.dart';
import 'package:repository_get_app/view_model/size/size_notifier.dart';

part 'home_app_bar.dart';
part 'home_body.dart';
part 'home_drawer.dart';
part 'home_scaffold.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO(Toma-0): Themeを一か所にまとめるようにしたい

    return GraphQLProvider(
      client: ValueNotifier<GraphQLClient>(ref.watch(graphQLClientProvider)),
      child: MaterialApp(
        title: 'Flutter Demo',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
          useMaterial3: true, //
          colorScheme: ColorTheme.lightScheme(), //
          textTheme: TextScheme.textTheme(),
        ),
        darkTheme: ThemeData(
          useMaterial3: true, //
          colorScheme: ColorTheme.darkScheme(),
          textTheme: TextScheme.textTheme(),
        ),
        themeMode: ref.watch(homeScreenNotifierProvider).colorThemeMode,
        home: const HomeScaffold(),
      ),
    );
  }
}
