import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management/ui/widgets/screen_background.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Text('Get Started With',
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.arrow_circle_right_outlined,
                size: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Column(
                children: [
                  TextButton(
                      onPressed: _onTapForgotPasswordButton,
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(fontSize: 19, color: Colors.grey),
                      )),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 19,
                              fontWeight: FontWeight.w600),
                          children: [
                        TextSpan(text: "Don't have account? "),
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = _onTapSignUpButton,
                        ),
                      ])),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  void _onTapForgotPasswordButton() {}

  void _onTapSignUpButton() {}
}
