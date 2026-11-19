import 'package:material_ui/material_ui.dart';
import 'package:portfolio/core/constants/app_menu_list.dart';
import 'package:portfolio/core/constants/app_size.dart';
import 'package:portfolio/core/helpers/styled_content.dart';

class LargeMenus extends StatelessWidget {
  const LargeMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      children: AppMenuList.items(context)
          .map(
            (item) => LargeAppBarMenuItem(
              text: item.title,
              onTap: () {},
              isSelected: true,
            ),
          )
          .toList(),
    );
  }
}

class LargeAppBarMenuItem extends StatelessWidget {
  const LargeAppBarMenuItem({
    super.key,
    required this.text,
    this.isSelected = false,
    required this.onTap,
  });
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.med,
          vertical: Insets.xs,
        ),
        child: Text(text, style: context.textStyle.bodyLgMedium),
      ),
    );
  }
}
