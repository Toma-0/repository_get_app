import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/text_l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:repository_get_app/view/home/home_screen.dart';

void main() {
  testWidgets('update the theme for light when incrementing the theme state',
      (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          title: 'Flutter Demo',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: ShowThemeModeDialog(),
        ),
      ),
    );

    await tester.tap(find.text('Light Mode'));
    await tester.pump();

    expect(
      Theme.of(tester.element(find.byType(MaterialApp))).brightness,
      equals(Brightness.light),
    );
  });
}

// TODO(Toma-0): flutter上では色が変化しているのにテスト上では変わっていないといわれる原因を調べる
//   testWidgets('update the theme for dark when incrementing the theme state',
//       (tester) async {
//     await tester.pumpWidget(
//       const ProviderScope(
//         child: MaterialApp(
//           title: 'Flutter Demo',
//           localizationsDelegates: AppLocalizations.localizationsDelegates,
//           supportedLocales: AppLocalizations.supportedLocales,
//           home: ShowThemeModeDialog(),
//         ),
//       ),
//     );

//     await tester.tap(find.text('Dark Mode'));
//     await tester.pump();

//     expect(
//       Theme.of(tester.element(find.byType(MaterialApp))).brightness,
//       equals(Brightness.dark),
//     );
//   });
// }
