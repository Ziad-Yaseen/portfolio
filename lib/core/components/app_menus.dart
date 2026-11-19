import 'package:flutter/widgets.dart';
import 'package:portfolio/l10n/app_localization.dart';

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      children: [
        Text(AppLocalizations.of(context)!.home),
        Text(AppLocalizations.of(context)!.courses),
        Text(AppLocalizations.of(context)!.blog),
        Text(AppLocalizations.of(context)!.aboutMe),
      ],
    );
  }
}
