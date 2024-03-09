import 'package:flutter/material.dart';

import '../extensions/extensions.dart';
import '../extensions/num_x.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  static String get route => '/auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const _Header(),
                  CustomButton(
                    onPressed: () {
                      context.pushReplacementNamed(LoginScreen.route);
                    },
                    text: 'Login',
                  ),
                  8.h,
                  CustomButton(
                    onPressed: () {
                      context.pushReplacementNamed(RegisterScreen.route);
                    },
                    text: 'Signup',
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'By Flutter Dev, To Flutter Dev',
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        10.h,
        const Text(
          'The Flutter Community',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        60.h,
        Image.asset('assets/images/onboarding.png'),
        68.h,
      ],
    );
  }
}
