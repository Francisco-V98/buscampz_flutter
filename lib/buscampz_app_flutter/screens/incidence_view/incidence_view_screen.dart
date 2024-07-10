import 'package:flutter/material.dart';
import 'package:buscampz_flutter/generated/l10n.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widget_exports.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

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
    return SafeArea(
      child: Column(
        children: [
          //TODO: Update to RYT
          const AppBarBuscampz(
            title: "Incidencias",
          ),
          //TODO: Update to RYT
          //TODO: Update provider
          UserDataIncidence(
            image: "",
            title: S.of(context).freddyRodriguez,
            address: S.of(context).colegioSanSebastian,
            route: S.of(context).rutaAB32,
          ),
          //TODO: Update to RYT
          //TODO: Update provider
          const DetailIncidence(
            //TODO: Implement i10n to all of the texts
            description:
                'Hola a todos, tuve un inconveniente con la llanta, la estoy reparando y luego continúo con la ruta. Voy a llegar un poco más tarde de lo acordado. Pueden chequear la App para ver el recorrido que voy a estar haciendo.',
          ),
          const RYTClientContentAnswerCard(
            //TODO: Implement i10n to all of the texts
            clientName: "Selena Hernández",
            text: "Ok señor Freddye, estoy atento para bajar y buscar a daniel",
            image: "assets/images/image_client_example.png",
          ),
          const Divider(),
          const RYTClientContentAnswerCard(
            //TODO: Implement i10n to all of the texts
            clientName: "Carmen Pérez",
            text: "Ok Gracias estaré atenta al estado de incidencia",
            image: "assets/images/image_client_example.png",
          ),
          const Divider(),
          const RYTClientContentAnswerCard(
            //TODO: Implement i10n to all of the texts
            clientName: "Maria Tovar",
            text:
                "En el nombre de Dios que se solucione rápido esta incidencia, estaré antenta",
            image: "assets/images/image_client_example.png",
          ),
          const Divider(),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const RYTTextField(
                width: 289,
                //TODO: Implement i10n to all of the texts
                hintText: "Escribir...",
              ),
              RYTButtonSendContent(
                icon: const Icon(
                  Icons.send,
                ),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
