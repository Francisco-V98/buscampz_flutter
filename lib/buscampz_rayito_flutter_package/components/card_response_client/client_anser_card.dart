import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/card_response_client/content/client_content_answer_card.dart';

class ClientAnswerCard extends StatelessWidget {
  const ClientAnswerCard({super.key});

  @override
  Widget build(BuildContext context) {
    //Cambiar la variable al inicio del widget en vez de crearla abajo
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(
        10.0,
      ),
      constraints: BoxConstraints(
        maxWidth: width,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8.0,
        ),
      ),
      child: const ClientContentAnswerCard(),
    );
  }
}
