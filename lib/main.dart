import 'package:noted/pages/home_page.dart';
import 'package:noted/pages/login_page.dart';
import 'package:noted/pages/registration_page.dart';
import 'package:noted/pages/settings_page.dart';
import 'package:noted/pages/starting_page.dart';
import 'package:noted/utils/routes.dart';
import 'package:noted/utils/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Do It TODAY',
      theme: MyTheme.lightTheme(),

      initialRoute: '/',

      routes: {
        '/': (context) => const StartingPage(),
        MyRoutes.startingroute: (context) => const StartingPage(),

        MyRoutes.homeroute: (context) => const HomePage(),

        MyRoutes.loginroute: (context) => const LoginPage(),

        MyRoutes.registerroute: (context) => const RegistrationPage(),

        MyRoutes.settingroute: (context) => const SettingsPage(),
      },
    );
  }
}
