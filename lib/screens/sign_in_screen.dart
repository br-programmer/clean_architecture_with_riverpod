import 'package:flutter/material.dart';

import '../extensions/extensions.dart';
import '../validators/form_validator.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static const String route = '/sign_in';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final formKey = GlobalKey<FormState>();
  var email = '';
  var password = '';

  void signIn() {
    if (!formKey.currentState!.validate()) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 28),
                    TextFormField(
                      validator: FormValidator.email,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'Your email here',
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      onChanged: (value) => setState(() => email = value),
                    ),
                    const SizedBox(height: 28),
                    TextFormField(
                      validator: FormValidator.password,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                        hintText: 'Your password here',
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                      ),
                      onChanged: (value) => setState(() => password = value),
                    ),
                    const SizedBox(height: 28),
                    ElevatedButton(
                      onPressed: signIn,
                      child: const Text('Sign In'),
                    ),
                    const SizedBox(height: 56),
                    FlutterMastersRichText(
                      text: 'Don’t have an Account?',
                      secondaryText: 'Sign Up',
                      onTap: () => context.pushNamed(SignUpScreen.route),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
