import 'package:flutter/material.dart';
import 'package:mok1/api/student.dart';
import 'package:mok1/api/student_info.dart';
// server path https://iportal.mok.kz/intranet/scripts/aslan/mobile/test_tumar.php?username=tumar0
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
import 'package:mok1/screens/home_screen/home_screen.dart';
import 'package:mok1/screens/login_screen/body.dart';

import '../../api/auth_test.dart';
import '../../components/constants.dart';
// import '../../components/custom_snackbars.dart';
import '../../components/default_button.dart';
import '../../components/form_error.dart';


class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  //final FirebaseAuth auth = FirebaseAuth.instance;
  //final CollectionReference users = FirebaseFirestore.instance.collection('users');
  //late final currentStudent;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  String? barcode;
  String? password;
  bool remember = true;
  final List<String> errors = [];
  
  Future<Student> get currentStudent => fetchStudentbyId('136');

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildEmailFormField(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          buildPasswordFormField(),
          const Row(
            //mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            // children: [
            //   Checkbox(
            //     value: remember,
            //     activeColor: const Color.fromARGB(255, 0, 63, 180),
            //     onChanged: (value) {
            //       setState(() {
            //         remember = value!;
            //       });
            //     },
            //   ),
            //   const Text("Запомнить"),
            //   const Spacer(),
              // GestureDetector(
              //   onTap: () {
                  
                 
              //   },
              //   child: const Text(
              //     "Забыли пароль?",
              //     style: TextStyle(decoration: TextDecoration.underline),
              //   ),
              // )
            // ],
          ),
          FormError(errors: errors),
          SizedBox( height: MediaQuery.of(context).size.height * 0.02),
          DefaultButton(
  text: "Продолжить",
  press: () async {
    int userID = 345;
    final userCheckResponse = await checkuser(barcode ?? '');

    if (userCheckResponse.isNotEmpty) {
      print("__________User Response Not Empty__________");
      errors.clear();
      try {
       Student currentStudent = await fetchStudentbyId(userID.toString());
        print(currentStudent);
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => MainScreen(student: currentStudent),
          ),
        );
      } catch (e) {
        addError(error: 'Не удалось получить данные студента');
        print(currentStudent);
      }
    } else {
      addError(error: kInvalidEmailError);
    }
  },
),


        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          errors.remove(kPassNullError);
        } else if (value.length >= 8) {
          errors.remove(kShortPassError);
        }
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();
          errors.clear();
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "Введите пароль";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "Слишком короткий пароль";
        }
        //return;
      },
      decoration: InputDecoration(
        labelText: "Пароль",
        contentPadding: const EdgeInsets.fromLTRB(35, 22, 0, 22),
        hintText: "Введите пароль",
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(25),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1.5, color: Colors.grey),
          borderRadius: BorderRadius.circular(25),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color.fromARGB(197, 244, 67, 54)),
          borderRadius: BorderRadius.circular(25),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1.5, color: Color.fromARGB(197, 244, 67, 54)),
          borderRadius: BorderRadius.circular(25),
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: const CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => barcode = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();
          errors.clear();
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
        }
        return;
      },
      decoration: InputDecoration(
        labelText: "Имя пользователя",
        contentPadding: const EdgeInsets.fromLTRB(35, 22, 0, 22),
        hintText: "Введите имя пользователя",
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(25),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1.5, color: Colors.grey),
          borderRadius: BorderRadius.circular(25),
        ),
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: ,
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color.fromARGB(197, 244, 67, 54)),
          borderRadius: BorderRadius.circular(25),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1.5, color: Color.fromARGB(197, 244, 67, 54)),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}