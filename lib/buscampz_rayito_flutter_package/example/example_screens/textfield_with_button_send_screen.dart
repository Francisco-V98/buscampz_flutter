import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/textfield_with_button_send/textfield_with_button_send.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldWithButtonSendScreen extends StatelessWidget {
  const TextFieldWithButtonSendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBotLight,
      appBar: AppBar(),
      body: const TextFieldWithButtonSend(),
    );
  }
}