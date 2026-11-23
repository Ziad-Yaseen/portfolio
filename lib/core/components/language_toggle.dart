import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_ui/material_ui.dart';
import 'package:portfolio/core/constants/app_constants.dart';
import 'package:portfolio/core/helpers/styled_content.dart';
import 'package:portfolio/core/riverpod/providers/app_locale_provider.dart';

class LanguageToggle extends ConsumerWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final locale = ref.watch(appLocaleProvider);
    return PopupMenuButton<String>(
      initialValue: locale,
      onSelected: ref.read(appLocaleProvider.notifier).changeLocale,

      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            value: AppConstants.en,
            child: _PopupLanguageSwitchItem('English', '🇺🇸'),
          ),
          const PopupMenuItem(
            value: AppConstants.ar,
            child: _PopupLanguageSwitchItem('العربية', '🇪🇬'),
          ),
        ];
      },
      child: Row(
        mainAxisSize: .min,
        children: [
          Icon(Iconsax.language_square, color: context.colorScheme.onSurface),
          const Gap(4),
          _SEOText(locale == AppConstants.en ? 'En' : 'ع'),
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
