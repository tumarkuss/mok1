import 'package:flutter/material.dart';

import '../../../components/components.dart';

class AttestationScreen extends StatelessWidget {
  const AttestationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar("Аттестация"),
      body: const Center(child: Text("Attestation Screen"),)
    );
  }
}