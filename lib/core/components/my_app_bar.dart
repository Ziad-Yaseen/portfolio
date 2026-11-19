import 'package:material_ui/material_ui.dart';
import 'package:portfolio/core/components/app_bar_drawer_icon.dart';
import 'package:portfolio/core/components/app_logo.dart';
import 'package:portfolio/core/components/app_menus.dart';
import 'package:portfolio/core/components/language_toggle.dart';
import 'package:portfolio/core/components/theme_toggle.dart';
import 'package:portfolio/core/constants/app_size.dart';
import 'package:portfolio/core/helpers/styled_content.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: .center,
      height: context.insets.appBarHeight,
      duration: const Duration(milliseconds: 400),
      color: context.theme.appBarTheme.backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: Insets.maxWidth),
        child: Row(
          children: [
            AppLogo(),
            Spacer(),
            if (context.isDesktop) LargeMenus(),
            Spacer(),
            LanguageToggle(),
            ThemeToggle(),
            if (!context.isDesktop) AppBarDrawerIcon(),
          ],
        ),
      ),
    );
  }
}
