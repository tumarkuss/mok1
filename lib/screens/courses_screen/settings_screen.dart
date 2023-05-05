import 'package:flutter/material.dart';
import 'package:mok1/components/components.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar('Настройки'),
      body: const Center(child: Text("Settings Screen")),
    );
  }
}