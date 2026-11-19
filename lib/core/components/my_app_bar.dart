import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/core/components/app_logo.dart';
import 'package:portfolio/core/components/app_menus.dart';
import 'package:portfolio/core/components/language_toggle.dart';
import 'package:portfolio/core/components/theme_toggle.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Row(
        children: [
          AppLogo(),
          Spacer(),
          AppMenus(),
          Spacer(),
          LanguageToggle(),
          ThemeToggle(),
        ],
      ),
    );
  }
}
