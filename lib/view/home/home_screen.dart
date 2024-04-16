import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/text_l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:repository_get_app/resource/l10n/l10n_template.dart';
import 'package:repository_get_app/resource/theme/color_theme.dart';
import 'package:repository_get_app/resource/theme/text_theme.dart';
import 'package:repository_get_app/view_model/counter/counter_notifier.dart';

part 'home_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: const HomeScaffold(),
    );
  }
}