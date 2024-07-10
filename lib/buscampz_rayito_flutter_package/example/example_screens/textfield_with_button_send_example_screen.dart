import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widget_exports.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

class TextFieldWithButtonSendExampleScreen extends StatelessWidget {
  const TextFieldWithButtonSendExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgBotLight,
      appBar: AppBar(
        title: const Text("TextField With ButtonSendScreen"),
      ),
      body: const Row(
        children: [
          RYTButtonSendContent(
            icon: Icon(
              Icons.send,
            ),
          )
        ],
      ),
    );
  }
}
