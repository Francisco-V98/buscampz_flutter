import 'package:flutter/material.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/card_response_client/client_anser_card.dart';

class ClientAnswerCardScreen extends StatelessWidget {
  const ClientAnswerCardScreen({super.key});

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
                child: ClientAnswerCard(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
