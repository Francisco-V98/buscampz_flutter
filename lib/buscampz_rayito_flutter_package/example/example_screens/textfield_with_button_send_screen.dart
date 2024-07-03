import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/textfield_with_button_send/button_send_with_text_field.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

class TextFieldWithButtonSendScreen extends StatelessWidget {
  const TextFieldWithButtonSendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBotLight,
      appBar: AppBar(
        title: const Text("TextField With ButtonSendScreen"),
      ),
      body: const ButtonSendWithTextField(),
    );
  }
}
