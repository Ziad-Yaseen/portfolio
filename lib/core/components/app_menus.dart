import 'package:flutter/widgets.dart';
import 'package:portfolio/core/helpers/styled_content.dart';

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      children: [
        Text(context.texts.home),
        Text(context.texts.courses),
        Text(context.texts.blog),
        Text(context.texts.aboutMe),
      ],
    );
  }
}
