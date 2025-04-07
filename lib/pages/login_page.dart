// ignore_for_file: avoid_print, use_build_context_synchronously, unused_field, no_leading_underscores_for_local_identifiers

import 'package:noted/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      
      setState(() {
        changeButton = false;
      });
    }
  }

  bool changeButton = false;
  String name = '';
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          '',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: .0, left: 10),
              child: Text(
                'Welcome back! Glad to see you again',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 20),
            Form(
    key: _formKey,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
            decoration: InputDecoration(
              fillColor: Colors.black12,

              hintText: 'Enter Your Email ',

              filled: true,
              labelText: 'E-mail',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          const SizedBox(height: 20),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              } else if (value.length < 6) {
                return 'Password must be at least 6 characters';
              }
              return null;
            },
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.black12,
              hintText: 'Enter Your Password ',
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
            Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 290.0),
                  child: GestureDetector(
                    onTap: () {
                      print('Method not implemented yet(Forgot password)');
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ),

                const SizedBox(height: 50),
                InkWell(
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),

                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child:
                          changeButton
                              ? CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                )
                              : Text(
                                'Login',
                                style: GoogleFonts.outfit(
                                  color: Colors.black87,

                                  fontSize: 15,
                                ),
                              ),
                    ),
                  ),
                ),
                // ElevatedButton(
                //   style: TextButton.styleFrom(
                //     minimumSize: const Size(600, 40),

                //     backgroundColor: Colors.black38,
                //     textStyle: TextStyle(color: Colors.red),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //   ),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeroute);
                //   },
                //   child: Text('Login'),
                // ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Text('Or Login with'),
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 78),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black54),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 50,
                        width: 100,
                        child: Center(
                          child: Image.asset(
                            'assets/images/google.png',
                            height: 33,
                            width: 35,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 60, left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black54),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 50,
                        width: 100,
                        child: Center(
                          child: Image.asset(
                            'assets/images/apple-logo.png',
                            height: 33,
                            width: 35,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account?'),
                SizedBox(width: 6),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.registerroute);
                  },
                  child: Text('Register Now'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

