import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';
import 'package:flutter/material.dart';

class GroupButton extends StatelessWidget {
  const GroupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonBottomSheet(
          icon: Icons.sync_rounded,
          text: 'En Proceso',
          onTap: () {},
        ),
        ButtonBottomSheet(
          icon: Icons.check_circle_outline_rounded,
          text: 'Resuelto',
          onTap: () {},
        ),
        ButtonBottomSheet(
          icon: Icons.add_circle_outline,
          text: 'nuevo',
          onTap: () {},
        ),
      ],
    );
  }
}