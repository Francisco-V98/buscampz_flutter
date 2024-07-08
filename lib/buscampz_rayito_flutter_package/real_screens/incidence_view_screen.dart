import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/card_response_client/content/client_content_answer_card.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';
import 'package:flutter/material.dart';

class IncidenceViewScreen extends StatelessWidget {
  const IncidenceViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgBotLight,
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          AppBarBuscampz(
            title: "Incidencias",
          ),
          UserDataIncidence(
            image:
                'https://doc.cerp.ideria.co/assets/images/image-a5238aed7050a0691758858b2569566d.jpg',
            title: 'Freddy Rodríguez',
            address: 'Colegio San Sebastián de los Altos Campos.',
            route: 'Ruta AB32-5',
          ),
          DetailIncidence(
            description:
                'Hola a todos, tuve un inconveniente con la llanta, la estoy reparando y luego continúo con la ruta. Voy a llegar un poco más tarde de lo acordado. Pueden chequear la App para ver el recorrido que voy a estar haciendo.',
          ),
          ClientContentAnswerCard(
            clientName: "Selena Hernández",
            text: "Ok señor Freddye, estoy atento para bajar y buscar a daniel",
            image: "assets/images/image_client_example.png",
          ),
          Divider(),
          ClientContentAnswerCard(
            clientName: "Carmen Pérez",
            text: "Ok Gracias estaré atenta al estado de incidencia",
            image: "assets/images/image_client_example.png",
          ),
          Divider(),
          ClientContentAnswerCard(
            clientName: "Maria Tovar",
            text:
                "En el nombre de Dios que se solucione rápido esta incidencia, estaré antenta",
            image: "assets/images/image_client_example.png",
          ),
          Divider(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonSendWithTextField(),
            ],
          ),
        ],
      ),
    );
  }
}
