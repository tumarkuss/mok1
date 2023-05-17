import 'package:flutter/material.dart';
import 'package:mok1/components/components.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar('Расписание'),
      body: const Center(child: Text("Schedule Screen")),
    );
  }
}