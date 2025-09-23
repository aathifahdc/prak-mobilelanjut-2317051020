import 'package:flutter/material.dart';

void main() => runApp(const JustduitApp());

class JustduitApp extends StatelessWidget {
  const JustduitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        ),
      ),
      initialRoute: LoginScreen.route,
      routes: {
        '/': (context) => const LoginScreen(), // default Sign In
        LoginScreen.route: (context) => const LoginScreen(),
        SignupScreen.route: (context) => const SignupScreen(),
      },
    );
  }
}
