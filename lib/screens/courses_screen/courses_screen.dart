import 'package:flutter/material.dart';
import 'package:mok1/components/components.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar('Курсы'),
      body: const Center(child: Text("Courses Screen")),
    );
  }
}