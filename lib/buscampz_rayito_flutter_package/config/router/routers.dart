import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import "package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/example_screens_export.dart";
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/screens.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/list_components_screen.dart';


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
  detailIncidenceTextForm("/detailIncidenceTextForm");
  //textFieldIncidentes('/textFieldIncidentes'),
  
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
          path: AppRoutesPaths.incidentTextField.path,
          builder: (context, state) => const IncidentsTextFieldScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.detailIncidenceTextForm.path,
          builder: (context, state) => const DetailIncidentTextFieldScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.sendEvidenceButton.path,
          builder: (context, state) => const EvidenceElevatedButtonScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.responseClientCard.path,
          builder: (context, state) => const ClientAnswerCardScreen(),
        ),
        GoRoute(
          path: AppRoutesPaths.buttonSendTextField.path,
          builder: (context, state) => const TextFieldWithButtonSendScreen(),
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
