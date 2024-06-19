import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets/card_response_client/content/card_response_client_content.dart';
import 'package:flutter/material.dart';

class CardResponseClient extends StatelessWidget {
  const CardResponseClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const CardResponseClientContent(),
    );
  }
}
