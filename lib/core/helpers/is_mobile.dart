import 'package:flutter/widgets.dart';
import 'package:portfolio/core/styles/app_text_styles.dart';

enum FormFactor { mobile, tablet, desktop }

abstract final class Breakpoints {
  static const double mobile = 600;
  static const double tablet = 900;
}

extension StyledContent on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;
  double get screenHeight => MediaQuery.sizeOf(this).height;

  FormFactor get formFactor {
    if (screenWidth < Breakpoints.mobile) return FormFactor.mobile;
    if (screenWidth < Breakpoints.tablet) return FormFactor.tablet;
    return FormFactor.desktop;
  }

  bool get isMobile => formFactor == FormFactor.mobile;
  bool get isTablet => formFactor == FormFactor.tablet;
  bool get isDesktop => formFactor == FormFactor.desktop;

  AppTextStyle get textStyle => switch (formFactor) {
    FormFactor.mobile || FormFactor.tablet => SmallTextStyles(),
    FormFactor.desktop => LargeTextStyles(),
  };
}
