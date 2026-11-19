import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyle {
  TextStyle get titleSmBold;
  TextStyle get bodyMdMedium;
  TextStyle get titleLgBold;
  TextStyle get titleMdMedium;
  TextStyle get bodyLgBold;
  TextStyle get bodyLgMedium;
}

class SmallTextStyles extends AppTextStyle {
  TextStyle _style(double size, FontWeight weight) =>
      GoogleFonts.cairo(fontSize: size, fontWeight: weight);

  @override
  TextStyle get bodyLgBold => _style(14, FontWeight.w700);

  @override
  TextStyle get bodyLgMedium => _style(14, FontWeight.w500);

  @override
  TextStyle get bodyMdMedium => _style(12, FontWeight.w500);

  @override
  TextStyle get titleLgBold => _style(24, FontWeight.w700);

  @override
  TextStyle get titleMdMedium => _style(14, FontWeight.w500);

  @override
  TextStyle get titleSmBold => _style(16, FontWeight.w700);
}


class LargeTextStyles extends AppTextStyle {
  TextStyle _style(double size, FontWeight weight) =>
      GoogleFonts.cairo(fontSize: size, fontWeight: weight);

  @override
  TextStyle get bodyLgBold => _style(16, FontWeight.w700);

  @override
  TextStyle get bodyLgMedium => _style(16, FontWeight.w500);

  @override
  TextStyle get bodyMdMedium => _style(14, FontWeight.w500);

  @override
  TextStyle get titleLgBold => _style(28, FontWeight.w700);

  @override
  TextStyle get titleMdMedium => _style(16, FontWeight.w500);

  @override
  TextStyle get titleSmBold => _style(18, FontWeight.w700);
}
