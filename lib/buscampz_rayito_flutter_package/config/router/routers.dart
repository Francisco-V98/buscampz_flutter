import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/card_response_client_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/elevated_button_evidencia.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/example_screens.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/list_components_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/text_field_detalles_de_incidentes_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/text_field_incidentes_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final appRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const ListComponentsScreen(),
        ),
        GoRoute(
          path: '/example',
          builder: (context, state) => const ExampleScreen(),
        ),
        GoRoute(
          path: '/textFieldIncidentes',
          builder: (context, state) => const TextFieldIncidentesScreen(),
        ),
        GoRoute(
          path: '/textFieldDetallesDelIncidente',
          builder: (context, state) => const TextFieldDetallesDeIncidenteScreen(),
        ),
        GoRoute(
          path: '/buttonEnviarEvidencia',
          builder: (context, state) => const ElevatedButtonEvidenciaScreen(),
        ),
        GoRoute(
          path: '/cardResponseClient',
          builder: (context, state) => const CardResponseClientScreen(),
        ),
      ],
    );
  },
);
