import 'package:flutter/material.dart';
import 'package:buscampz_flutter/generated/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:buscampz_flutter/provider/incidence_provider.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widgets_exports.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/components/widget_exports.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/colors/app_colors.dart';

class IncidenceViewScreen extends ConsumerWidget {
  const IncidenceViewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final incidenceState = ref.watch(incidenceProvider);

    return Scaffold(
      backgroundColor: AppColors.bgBotLight,
      body: incidenceState.isLoading
          ? const Center(child: CircularProgressIndicator())
          : incidenceState.incidenceModel == null
              ? const Center(child: Text('No data available'))
              : _Body(incidenceState: incidenceState),
    );
  }
}

class _Body extends StatelessWidget {
  final IncidenceState incidenceState;

  const _Body({required this.incidenceState});

  @override
  Widget build(BuildContext context) {
    final incidence = incidenceState.incidenceModel!;

    return SafeArea(
      child: Column(
        children: [
          const RYTAppBar(
            title: "Incidencias",
          ),
          RYTUserDataIncidence(
            image: incidence.data.driver.profilePicture,
            title:
                "${incidence.data.driver.firstName} ${incidence.data.driver.lastName}",
            address: S.of(context).colegioSanSebastian,
            route: incidence.data.routeHistory.shift,
          ),
          RYTDetailIncidence(
            description: incidence.data.message,
          ),
            RYTClientContentAnswerCard(
              clientName: incidence.data.driver.lastName,
              text: incidence.data.message,
              image: incidence.data.driver.profilePicture, 
            ),
            const Divider(),
            RYTClientContentAnswerCard(
              clientName: incidence.data.driver.lastName,
              text: incidence.data.message,
              image: incidence.data.driver.profilePicture, 
            ),
            const Divider(),
            RYTClientContentAnswerCard(
              clientName: incidence.data.driver.lastName,
              text: incidence.data.message,
              image: incidence.data.driver.profilePicture, 
            ),
            const Divider(),
          
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const RYTTextField(
                width: 289,
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
