import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  googleLogin() async {
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in with Google'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: googleLogin,
          child: const Text('Google Signin'),
        ),
      ),
    );
  }
}