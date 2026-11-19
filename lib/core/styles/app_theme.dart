import 'package:material_ui/material_ui.dart';
import 'package:portfolio/core/constants/app_colors.dart';

class AppTheme {
  ThemeData get light => ThemeData();
  ThemeData get dark => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.darkBG,
    colorScheme: .dark(
      primary: AppColors.primary,
      surface: AppColors.darkBG,
      onSurface: AppColors.gray[100]!,
    ),
    appBarTheme: AppBarTheme(backgroundColor: AppColors.gray[900]),
  );
}
