import 'package:material_ui/material_ui.dart';

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          const PopupMenuItem(child: Text('English')),
          const PopupMenuItem(child: Text('Arabic')),
        ];
      },
    );
  }
}
