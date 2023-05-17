import 'package:flutter/material.dart';
import 'package:mok1/components/components.dart';

import 'components.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar("Ресурсы"),
      body: const ResourcesCardBuilder(),
    );
  }
}