import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/textfield_with_button_send/content/button_send/button_send_content.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/textfield_with_button_send/content/textfield_send/textfield_send_content.dart';
import 'package:flutter/material.dart';

class TextFieldWithButtonSend extends StatelessWidget {
  const TextFieldWithButtonSend({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        TextFieldSendContent(),
        ButtonSendContent()
      ],
    );
  }
}


