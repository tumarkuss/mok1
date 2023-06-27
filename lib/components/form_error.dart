import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => formErrorText(error: errors[index]),
      ),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // SvgPicture.asset(
        //   "assets/icons/Error.svg",
        //   height: 14,
        //   width: 40,
        // ),
        
        Text(
          error,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 12,color: Color.fromARGB(197, 244, 67, 54)),
        ),
      ],
    );
  }
}
