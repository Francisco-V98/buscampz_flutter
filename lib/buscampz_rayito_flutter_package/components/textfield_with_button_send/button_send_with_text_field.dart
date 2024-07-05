import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/textfield_with_button_send/content/button_send/button_send_content.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/textfield_with_button_send/content/textfield_send/send_content_text_field.dart';

class ButtonSendWithTextField extends StatelessWidget {
  const ButtonSendWithTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SendContentTextField(),
        ButtonSendContent()
      ],
    );
  }
}


