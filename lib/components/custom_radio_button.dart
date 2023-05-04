import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({Key? key, this.onPressed, this.accept}) : super(key: key);
  final Function? onPressed;
  final bool? accept;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed as void Function()?,
      child: Container(
        width: 17,
        height: 17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: accept! ? const Color(0xFF0C6F83) : Colors.grey,
            width: 2,
          ),
        ),
        child: accept!
            ? Container(
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF0C6F83),
                ),
              )
            : null,
      ),
    );
  }
}
