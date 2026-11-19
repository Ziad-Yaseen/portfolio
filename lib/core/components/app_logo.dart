import 'package:flutter/widgets.dart';
import 'package:portfolio/core/helpers/styled_content.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      style: context.textStyle.titleLgBold,

      child: Text(context.texts.appTitle),
    );
  }
}
