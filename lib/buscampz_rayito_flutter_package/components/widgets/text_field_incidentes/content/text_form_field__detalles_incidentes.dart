import 'package:flutter/material.dart';

class TextFormFieldDetalleDeLaIncidencia extends StatelessWidget {
  const TextFormFieldDetalleDeLaIncidencia({
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
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
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
