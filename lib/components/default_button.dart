import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

import 'custom_radio_button.dart';


//import '../constants.dart';
//import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
    this.fontSize,
    this.color,
    this.textColor,
    this.hasRadio,
    this.radioValue,
    this.radioChanged,
    this.hasArrow,
    this.hasBorder = false,
    this.width,
    this.textAlign,
    this.borderRadius,
  }) : super(key: key);
  final String text;
  final VoidCallback? press;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final bool? hasRadio;
  final bool? radioValue;
  final Function()? radioChanged;
  final bool? hasArrow;
  final bool? hasBorder;
  final double? width;
  final double? borderRadius;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width * 0.8,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? const Color.fromARGB(255, 0, 63, 180),
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: hasBorder! ? const BorderSide(strokeAlign: BorderSide.strokeAlignOutside) : BorderSide.none,
            borderRadius: BorderRadius.circular(borderRadius ?? 30),
          ),
        ),
        onPressed: press,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (hasRadio ?? false)
              Row(
                children: [
                  CustomRadioButton(
                    accept: radioValue,
                    onPressed: radioChanged,
                  ),
                  const SizedBox(width: 16),
                ],
              ),
            const Spacer(),
            Text(
              text,
              textAlign: textAlign ?? TextAlign.start,
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: fontSize ?? 16,
                fontWeight: FontWeight.w700,
                color: textColor ?? Colors.white,
              ),
            ),
            const Spacer(),
            if (hasArrow ?? false) const Icon(Icons.arrow_forward_ios_rounded)
          ],
        ),
      ),
    );
  }
}
