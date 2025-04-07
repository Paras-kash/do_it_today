// ignore_for_file: avoid_print

import 'package:noted/utils/routes.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({super.key});

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset('assets/images/app_logo.png'),
            SizedBox(height: 20),
            SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.loginroute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black54,
                      ),
                      height: 60,
                      width: 400,
                      child: Center(
                        child: Text(
                          'Login',
                          style: GoogleFonts.outfit(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.registerroute);
                    },

                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black54,
                      ),
                      height: 60,
                      width: 400,
                      child: Center(
                        child: Text(
                          'Register',
                          style: GoogleFonts.outfit(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: GestureDetector(
                    onTap: (){
                      print('Method not implemented yet(Google)');
                    },
                    child: Container(
                      
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            print('Method not implemented yet(Google)');
                          },
                          child: Image.asset(
                            'assets/images/google.png',
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 40),

                  child: GestureDetector(
                    onTap: (){
                      print('Method not implemented yet(Appke)');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(left: 20),
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54, width: 1),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: (){
                            print('Method not implemented yet(Apple)');
                          },
                          child: Image.asset(
                            'assets/images/apple-logo.png',
                            alignment: Alignment.centerLeft,
                            height: 35,
                            width: 35,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 140),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homeroute);
              },
              child: Text(
                'login as guest',
                style: GoogleFonts.outfit(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
