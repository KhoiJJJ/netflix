import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:netflix/common/helper/navigation/app_navigation.dart';
import 'package:netflix/core/configs/theme/app_colors.dart';
import 'package:reactive_button/reactive_button.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(top: 100, right: 16, left: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _singinText(),
            SizedBox(
              height: 30,
            ),
            _emailField(),
            SizedBox(
              height: 10,
            ),
            _passwordField(),
            SizedBox(
              height: 60,
            ),
            _signinButton(),
            SizedBox(
              height: 10,
            ),
            _signupText(context)
          ],
        ),
      ),
    );
  }

  Widget _singinText() {
    return Text(
      'Sign in',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    );
  }

  Widget _emailField() {
    return TextField(
      decoration: InputDecoration(hintText: 'Email'),
    );
  }

  Widget _passwordField() {
    return TextField(
      decoration: InputDecoration(hintText: 'Password'),
    );
  }

  Widget _signinButton() {
    return ReactiveButton(
      title: 'Sign In',
      activeColor: AppColors.primary,
      onPressed: () async {},
      onSuccess: () {},
      onFailure: (error) {},
    );
  }

  Widget _signupText(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: "Don't you have an account?"),
      TextSpan(
          text: 'Sign up',
          style: TextStyle(color: Colors.blue),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              AppNavigator.push(context, widget);
            })
    ]));
  }
}
