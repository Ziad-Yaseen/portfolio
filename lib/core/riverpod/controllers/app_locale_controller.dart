import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/constants/app_constants.dart';

class AppLocaleController extends Notifier<String> {
  @override
  String build() => AppConstants.en;

  void changeLocale(String newLocale) => state = newLocale;
}
