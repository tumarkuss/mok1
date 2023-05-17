import 'package:flutter/material.dart';
import 'package:mok1/components/components.dart';

class SpravkiScreen extends StatelessWidget {
  const SpravkiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar('Справки'),
      body: const Center(child: Text("Spravki Screen")),
    );
  }
}