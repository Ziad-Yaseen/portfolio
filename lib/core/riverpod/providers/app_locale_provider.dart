import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/riverpod/controllers/app_locale_controller.dart';

final AppLocaleProvider = AsyncNotifierProvider<AppLocaleController, String>(
  AppLocaleController.new,
);
