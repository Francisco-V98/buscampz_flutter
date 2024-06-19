import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/card_response_client/card_response_client.dart';
import 'package:flutter/material.dart';

class CardResponseClientScreen extends StatelessWidget {
  const CardResponseClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CardResponseClient(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
