import 'package:flutter/widgets.dart';
import 'package:portfolio/core/helpers/is_mobile.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      style: context.textStyle.titleLgBold,

      child: const Text('Ziad Yaseen Portfolio'),
    );
  }
}
