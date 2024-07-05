import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/client_answer_card_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/evidence_elevated_button_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/example_screens.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/list_components_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/detail_incident_text_field_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/incidents_text_field_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/textfield_with_button_send_screen.dart';

import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/example_screens.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/list_components_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/text_field_incidentes_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/screens.dart';

enum AppRoutesPaths {
  home('/'),
  example('/example'),
  textFieldIncidentes('/textFieldIncidentes'),
  appbar('/appbar'),
  cardIncidence('/cardIncidence'),
  incidenceSection('/incidenceSection'),
  bottomSheetSection('/buttomSheetSection');

  const AppRoutesPaths(this.path);
  final String path;
}


final appRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      routes: [
        GoRoute(
          path: AppRoutesPaths.home.path,
          builder: (context, state) => const ListComponentsScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.example.path,
          builder: (context, state) => const ExampleScreen(),
        ),
        GoRoute(

          path: '/incidentTextField',
          builder: (context, state) => const IncidentsTextFieldScreen(),
        ),
        GoRoute(
          path: '/detailIncidenceTextForm',
          builder: (context, state) => const DetailIncidentTextFieldScreen(),
        ),
        GoRoute(
          path: '/sendEvidenceButton',
          builder: (context, state) => const EvidenceElevatedButtonScreen(),
        ),
        GoRoute(
          path: '/responseClientCard',
          builder: (context, state) => const ClientAnswerCardScreen(),
        ),
        GoRoute(
          path: '/buttonSendTextField',
          builder: (context, state) => const TextFieldWithButtonSendScreen(),
        ),

        GoRoute(
          path: AppRoutesPaths.textFieldIncidentes.path,
          builder: (context, state) => const TextFieldIncidentesScreen(),
        ),
          

        ),
        GoRoute(
          path: AppRoutesPaths.appbar.path,
          builder: (context, state) => const AppbarScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.cardIncidence.path,
          builder: (context, state) => const CardIncidenceListScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.incidenceSection.path,
          builder: (context, state) => const IncidenceSectionScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.bottomSheetSection.path,
          builder: (context, state) => const BottomSheetScreen(),
        )
      ],
    );
  },
);
