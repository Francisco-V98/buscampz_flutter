import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';

class EvidenceElevatedButtonScreen extends StatelessWidget {
  const EvidenceElevatedButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Evidence ElevatedButton Screen"),
      ),
      body: const Center(
        child: EvidenceElevatedButtons(),
      ),
    );
  }
}
