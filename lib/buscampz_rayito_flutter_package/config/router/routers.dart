import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/screens.dart';
import 'package:buscampz_flutter/buscampz_app_flutter/screens/incidence_view/incidence_view_screen.dart';
import 'package:buscampz_flutter/buscampz_app_flutter/screens/incidence_create/incidence_create_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/list_components_screen.dart';
import "package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/example_screens_export.dart";
//TODO: jesus has to add this import to the barrel file
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/textfield_with_button_send_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/example_screens_exports.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/list_components_example_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/incidents_text_field_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/example_screens.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/evidence_elevated_button_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/detail_incident_text_field_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/client_answer_card_screen.dart';

enum AppRoutesPaths {
  home('/'),
  example('/example'),
  appbar('/appbar'),
  cardIncidence('/cardIncidence'),
  incidenceSection('/incidenceSection'),
  incidentTextField("/incidentTextField"),
  bottomSheetSection('/buttomSheetSection'),
  sendEvidenceButton("/sendEvidenceButton"),
  responseClientCard("/responseClientCard"),
  buttonSendTextField("/buttonSendTextField"),
  detailIncidenceTextForm("/detailIncidenceTextForm"),
  incidenceCreateScreen("/incidenceCreateScreen"),
  incidenceViewScreen("/incidenceViewScreen");

  const AppRoutesPaths(this.path);
  final String path;
}

final appRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      routes: [
        GoRoute(
          path: AppRoutesPaths.home.path,
          builder: (context, state) => const ListComponentsExampleScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.example.path,
          builder: (context, state) => const ExampleScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.incidentTextField.path,
          builder: (context, state) => const IncidentsTextFieldExampleScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.detailIncidenceTextForm.path,
          builder: (context, state) =>
              const DetailIncidentTextFieldExampleScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.sendEvidenceButton.path,
          builder: (context, state) =>
              const EvidenceElevatedButtonExampleScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.responseClientCard.path,
          builder: (context, state) => const ClientAnswerCardExampleScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.buttonSendTextField.path,
          builder: (context, state) =>
              const TextFieldWithButtonSendExampleScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.appbar.path,
          builder: (context, state) => const AppbarExampleScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.cardIncidence.path,
          builder: (context, state) => const CardIncidenceListExampleScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.incidenceSection.path,
          builder: (context, state) => const IncidenceSectionExampleScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.bottomSheetSection.path,
          builder: (context, state) => const BottomSheetExampleScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.incidenceCreateScreen.path,
          builder: (context, state) => const IncidenceCreateScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.incidenceViewScreen.path,
          builder: (context, state) => const IncidenceViewScreen(),
        )
      ],
    );
  },
);
