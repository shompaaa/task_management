import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management/ui/screens/forgot_password_pin_verification_screen.dart';
import 'package:task_management/ui/screens/login_screen.dart';
import 'package:task_management/ui/screens/register_screen.dart';
import 'package:task_management/ui/widgets/screen_background.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _newPasswordTEController =
      TextEditingController();
  final TextEditingController _confirmPasswordTEController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Text('Set Password',
                  style: Theme.of(context).textTheme.titleMedium),
              Text('Set a new password minimum length of 6 letters.',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 19, color: Colors.grey)),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                textInputAction: TextInputAction.next,
                controller: _newPasswordTEController,
                decoration: InputDecoration(
                  hintText: 'New Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                controller: _confirmPasswordTEController,
                decoration: InputDecoration(
                  hintText: 'Confirm New Password',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: _onTapSubmitButton,
                child: Text('Confirm',
                    style: TextStyle(fontSize: 22,color: Colors.white)
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 19,
                            fontWeight: FontWeight.w600),
                        children: [
                      TextSpan(text: "Already have an account? "),
                      TextSpan(
                        text: "Sign In",
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = _onTapSignInButton,
                      ),
                    ])),
              )
            ],
          ),
        ),
      )),
    );
  }

  void _onTapSignInButton() {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => LoginScreen()), (pre) => false);
  }

  void _onTapSubmitButton() {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => LoginScreen()), (pre) => false);
  }

  @override
  void dispose() {
    _newPasswordTEController.dispose();
    _confirmPasswordTEController.dispose();
    super.dispose();
  }
}
