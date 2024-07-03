import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
//Change name of the class Spanish to English
class DetailIncidentTextFieldContent extends StatelessWidget {
  const DetailIncidentTextFieldContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: "Escribir...",
        hintStyle: const TextStyle(
          color: AppColors.greyLight,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            8.0,
          ),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 90.0,
          horizontal: 20.0,
        ),
      ),
    );
  }
}
