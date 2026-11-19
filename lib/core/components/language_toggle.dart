import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_ui/material_ui.dart';
import 'package:portfolio/core/helpers/styled_content.dart';

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            child: _PopupLanguageSwitchItem('English', '🇺🇸'),
          ),
          const PopupMenuItem(
            child: _PopupLanguageSwitchItem('العربية', '🇪🇬'),
          ),
        ];
      },
      child: Row(
        mainAxisSize: .min,
        children: [
          Icon(Iconsax.language_square, color: context.colorScheme.onSurface),
          const Gap(4),
          _SEOText(
            Localizations.localeOf(context).languageCode == 'en' ? 'En' : 'ع',
          ),
        ],
      ),
    );
  }
}

class _PopupLanguageSwitchItem extends StatelessWidget {
  const _PopupLanguageSwitchItem(this.language, this.flag);
  final String language;
  final String flag;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      children: [Text(flag), const Gap(8), _SEOText(language)],
    );
  }
}

class _SEOText extends StatelessWidget {
  const _SEOText(this.text, {this.style});
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
