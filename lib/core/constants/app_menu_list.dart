import 'package:flutter/widgets.dart';
import 'package:portfolio/core/helpers/styled_content.dart';
import 'package:portfolio/core/routes/app_routes.dart';

class AppMenuList {
  static List<AppMenu> items(BuildContext context) => [
    AppMenu(title: context.texts.home, path: Routes.home),
    AppMenu(title: context.texts.courses, path: Routes.courses),
    AppMenu(title: context.texts.blog, path: Routes.blog),
    AppMenu(title: context.texts.aboutMe, path: Routes.about),
  ];
}

class AppMenu {
  final String title;
  final String path;

  AppMenu({required this.title, required this.path});
}
