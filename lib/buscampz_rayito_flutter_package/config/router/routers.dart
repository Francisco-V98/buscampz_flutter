import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/textfield_with_button_send_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/all_example_screens.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/list_components_example_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/incidents_text_field_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/example_screens.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/evidence_elevated_button_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/detail_incident_text_field_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example_screen/example_screens/client_answer_card_screen.dart';

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
          builder: (context, state) => const ListComponentsExampleScreen(),
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
        )
      ],
    );
  },
);
