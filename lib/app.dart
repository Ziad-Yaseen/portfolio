import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:flutter_localizations/flutter_localizations.dart'
    hide GlobalMaterialLocalizations, GlobalCupertinoLocalizations;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:portfolio/core/riverpod/providers/app_locale_provider.dart';
import 'package:portfolio/core/styles/app_theme.dart';
import 'package:portfolio/features/home/screens/home_page.dart';
import 'package:portfolio/l10n/app_localization.dart';

class Portfolio extends ConsumerWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ref.watch(appLocaleProvider);

    return MaterialApp(
      theme: AppTheme().light,
      darkTheme: AppTheme().dark,
      themeMode: ThemeMode.dark,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ar'), Locale('en')],
      debugShowCheckedModeBanner: false,
      locale: Locale(lang),
      home: const HomePage(),
    );
  }
}
