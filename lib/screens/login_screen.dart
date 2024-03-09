import 'package:flutter/material.dart';

import '../extensions/extensions.dart';
import '../extensions/num_x.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String get route => '/login';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final separator = 28.h;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  separator,
                  const CustomImput.email(),
                  separator,
                  const CustomImput.password(),
                  separator,
                  CustomButton(
                    text: 'Login',
                    onPressed: () {
                      context.pushReplacementNamed(HomeScreen.route);
                    },
                  ),
                  separator,
                  separator,
                  CustomRichText(
                    firstText: 'Don’t have an Account?',
                    secondaryText: 'Signup',
                    onTap: () {
                      context.pushReplacementNamed(RegisterScreen.route);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
