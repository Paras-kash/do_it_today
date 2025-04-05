
import 'package:do_it_today/pages/home_page.dart';
import 'package:do_it_today/pages/login_page.dart';
import 'package:do_it_today/pages/registration_page.dart';
import 'package:do_it_today/pages/starting_page.dart';
import 'package:do_it_today/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Do It TODAY',
    
    theme: ThemeData(primarySwatch: Colors.grey , fontFamily: GoogleFonts.outfit().fontFamily),
    
   initialRoute: '/',
   
    
    routes: {
      '/': (context) => const StartingPage(),
      MyRoutes.startingroute: (context) => const StartingPage(),
    
      MyRoutes.homeroute: (context) => const HomePage(),
      
      MyRoutes.loginroute: (context)=> const LoginPage(),

      MyRoutes.registerroute: (context) => const RegistrationPage(),
      
    },
    
    );
  }
}
