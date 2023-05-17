import 'package:flutter/material.dart';
import 'package:mok1/components/components.dart';

class TranscriptScreen extends StatelessWidget {
  const TranscriptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar('Транскрипт'),
      body: const Center(child: Text("Transcript Screen")),
    );
  }
}