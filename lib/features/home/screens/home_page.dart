import 'package:material_ui/material_ui.dart';
import 'package:portfolio/core/components/my_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyAppBar());
  }
}
