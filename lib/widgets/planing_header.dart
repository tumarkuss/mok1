import 'package:flutter/material.dart';

import '../constant.dart';

class PlaningHeader extends StatelessWidget {
  const PlaningHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Text(
              "Планнер ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "Все",
              style: TextStyle(color: kDarkBlue, height: 2),
            )
          ],
        ),
        Row(
          children: const [
            Icon(
              Icons.calendar_month_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "1 Мая 2023",
              style: TextStyle(
                  fontSize: 16,
                  color: kDarkBlue,
                  height: 2,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
