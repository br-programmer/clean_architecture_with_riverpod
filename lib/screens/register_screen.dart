import 'package:flutter/material.dart';

import '../extensions/extensions.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const String route = '/register';

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
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
                    'Signup',
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
                  const CustomImput.password(
                    hint: 'Confirm Password',
                  ),
                  separator,
                  CustomButton(
                    onPressed: () {
                      context.pushReplacementNamed(HomeScreen.route);
                    },
                    text: 'Signup',
                  ),
                  separator,
                  separator,
                  CustomRichText(
                    firstText: 'Already have an Account?',
                    secondaryText: 'Login',
                    onTap: () {
                      context.pushReplacementNamed(LoginScreen.route);
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
