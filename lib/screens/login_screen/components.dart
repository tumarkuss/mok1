import 'package:flutter/material.dart';
import 'package:mok1/components/components.dart';
import 'package:mok1/components/default_button.dart';
import 'package:mok1/components/no_account_text.dart';
import 'package:mok1/screens/login_screen/sign_form.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: authAppBar(),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            child: SingleChildScrollView(
              child: Column(

                //mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30,),
                  textLogo(40),
                  const SizedBox(height: 80,),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    "Войти в аккаунт",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: MediaQuery.of(context).size.width * 0.075,
                      fontFamily: "Avenir",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                  Text(
                    "Введите данные для авторизации.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blueGrey.shade600),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  const SignForm(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  // const Divider(),
                  const NoAccountText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
}}