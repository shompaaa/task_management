import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_management/ui/screens/login_screen.dart';
import 'package:task_management/ui/screens/register_screen.dart';
import 'package:task_management/ui/screens/reset_password_screen.dart';
import 'package:task_management/ui/widgets/screen_background.dart';

class ForgotPasswordPinVerificationScreen extends StatefulWidget {
  const ForgotPasswordPinVerificationScreen({super.key});

  @override
  State<ForgotPasswordPinVerificationScreen> createState() =>
      _ForgotPasswordPinVerificationScreenState();
}

class _ForgotPasswordPinVerificationScreenState
    extends State<ForgotPasswordPinVerificationScreen> {
  final TextEditingController _pinCodeTEController = TextEditingController();
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
              Text('Pin Verification',
                  style: Theme.of(context).textTheme.titleMedium),
              Text(
                  'A 6-digit verification pin has been sent to your email address',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 19, color: Colors.grey)),
              const SizedBox(
                height: 20,
              ),
              PinCodeTextField(
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeColor: Colors.white,
                  selectedFillColor: Colors.white,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.white,
                ),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                controller: _pinCodeTEController,
                appContext: context,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: _onTapSubmitButton,
                child: Text('Verify',
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

  void _onTapSubmitButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordScreen(),),);
  }

  void _onTapSignInButton() {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => LoginScreen()), (pre) => false);
  }

  @override
  void dispose() {
    _pinCodeTEController.dispose();
    super.dispose();
  }
}
