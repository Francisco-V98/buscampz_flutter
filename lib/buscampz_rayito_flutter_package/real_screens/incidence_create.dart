import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';
import 'package:flutter/material.dart';

class IncidenceCreatescreen extends StatelessWidget {
  const IncidenceCreatescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppBarBuscampz(title: "title")
        ],
      )),
    );
  }
}
