import 'package:flutter/widgets.dart';
import 'package:portfolio/core/helpers/is_mobile.dart';
import 'package:portfolio/l10n/app_localization.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      style: context.textStyle.titleLgBold,

      child: Text(AppLocalizations.of(context)!.appTitle),
    );
  }
}
