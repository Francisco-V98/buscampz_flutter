import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldIncidentesContent extends StatelessWidget {
  const TextFormFieldIncidentesContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: "Elegir...",
        hintStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        suffixIcon: const Icon(
          Icons.keyboard_arrow_down,
          color: AppColors.bgBotDark,
        ),
      ),
    );
  }
}
