import 'package:desing_system/design_system.dart';
import 'package:example/config/routes/app_routes.dart';
import 'package:example/screen/atoms_button.dart';
import 'package:example/screen/atoms_page.dart';
import 'package:example/screen/home_page.dart';
import 'package:flutter/material.dart';

class ShowcaseApp extends StatelessWidget {
  const ShowcaseApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightDesignTheme,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.home:
            return MaterialPageRoute(builder: (context) => const HomePage());
          case AppRoutes.atoms:
            return MaterialPageRoute(builder: (context) => const AtomsPage());
          case AppRoutes.atomButton:
            return MaterialPageRoute(builder: (context) => const AtomsButton());
          default:
            return MaterialPageRoute(builder: (context) => const HomePage());
        }
      },
    );
  }
}