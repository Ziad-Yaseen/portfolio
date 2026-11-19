import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppLocaleController extends Notifier<String> {
  @override
  String build() => 'en';

  void changeLocale(String newLocale) => state = newLocale;
}
