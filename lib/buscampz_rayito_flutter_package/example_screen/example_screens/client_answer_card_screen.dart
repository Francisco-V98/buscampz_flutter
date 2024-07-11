import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widget_exports.dart';

class ClientAnswerCardExampleScreen extends StatelessWidget {
  const ClientAnswerCardExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Client Answer Card Screen"),
      ),
      body: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: RYTClientContentAnswerCard(
                  clientName: "Carmen Pérez",
                  text: "Ok Gracias estaré atenta al estado de incidencia",
                  image: "assets/images/image_client_example.png",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
