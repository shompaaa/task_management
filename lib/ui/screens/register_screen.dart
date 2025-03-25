import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management/ui/widgets/screen_background.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

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
              Text('Join With Us',
                  style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                controller: _emailTEController,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: _firstNameTEController,
                decoration: InputDecoration(
                  hintText: 'First Name',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                controller: _lastNameTEController,
                decoration: InputDecoration(
                  hintText: 'Last Name',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                controller: _mobileTEController,
                decoration: InputDecoration(
                  hintText: 'Mobile',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                controller: _passwordTEController,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: _onTapSubmitButton,
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

  void _onTapSubmitButton(){

  }

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
