import 'package:material_ui/material_ui.dart';
import 'package:portfolio/core/helpers/styled_content.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      style: context.textStyle.devName.copyWith(
        color: Theme.of(context).colorScheme.onSurface,
      ),

      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: context.texts.appTitle1,
              style: context.textStyle.devName.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            TextSpan(
              text: '.',
              style: context.textStyle.devName.copyWith(
                color: Color(0xFFEAF1FF),
              ),
            ),
            TextSpan(
              text: context.texts.appTitle2,
              style: context.textStyle.devName.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
