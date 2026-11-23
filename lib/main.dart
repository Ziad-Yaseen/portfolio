import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:portfolio/app.dart';
import 'package:portfolio/core/helpers/shared_prefs_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPrefsHelper.init();
  runApp(const ProviderScope(child: Portfolio()));
}
