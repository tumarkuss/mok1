import 'package:flutter/material.dart';

import '../constant.dart';

class ActivityHeader extends StatelessWidget {
  const ActivityHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Активность",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Row(
          children: const [
            Text(
              "День",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "Неделя",
              style: TextStyle(color: kDarkBlue),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "Месяц",
              style: TextStyle(color: Colors.grey),
            )
          ],
        )
      ],
    );
  }
}
