import 'package:material_ui/material_ui.dart';
import 'package:portfolio/core/helpers/styled_content.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      style: context.textStyle.titleLgBold.copyWith(
        color: Theme.of(context).colorScheme.onSurface,
      ),

      child: Text(context.texts.appTitle),
    );
  }
}
