import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';

class ButtonGroupBottomSheet extends StatelessWidget {
  const ButtonGroupBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BottomSheetButton(
          icon: Icons.sync_rounded,
          text: 'En Proceso',
          onTap: () {},
        ),
        BottomSheetButton(
          icon: Icons.check_circle_outline_rounded,
          text: 'Resuelto',
          onTap: () {},
        ),
        BottomSheetButton(
          icon: Icons.add_circle_outline,
          text: 'nuevo',
          onTap: () {},
        ),
      ],
    );
  }
}