import 'package:flutter/material.dart';
import 'components.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Center(
            child: MyTextField(),
    )));
  }
}