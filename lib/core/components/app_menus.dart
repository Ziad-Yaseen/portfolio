import 'package:flutter/widgets.dart';

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: .min,
      children: [
        Text('Home'),
        Text('Courses'),
        Text('Blog'),
        Text('About Me'),
      ],
    );
  }
}