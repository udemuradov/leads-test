import 'package:flutter/material.dart';
import 'package:leads_test/src/config/routes/app_routes.dart';
import 'package:leads_test/src/config/themes/app_themes.dart';
import 'package:leads_test/src/core/utils/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppTitle,
      theme: AppTheme.light,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
      onUnknownRoute: AppRoutes.onUnkownRoute,
    );
  }
}


