import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

//Change name of the class Spanish to English
class RYTIncidentContentTextField extends StatelessWidget {
  const RYTIncidentContentTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            color: AppColors.greyLight,
            offset: Offset(
              0,
              2.5,
            ),
          )
        ],
      ),
      child: TextFormField(
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
      ),
    );
  }
}
