import 'package:flutter/material.dart';
import 'package:mok1/screens/login_screen/body.dart';

import 'constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            "Новый пользователь? ",
            style:
                TextStyle(fontSize: MediaQuery.of(context).size.height * 0.018),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginPage())),
          child: Text(
            "Зарегистрироваться.",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.018,
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
