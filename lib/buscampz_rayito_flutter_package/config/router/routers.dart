import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/example_screens.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/list_components_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/text_field_incidentes_screen.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/example/example_screens/screens.dart';
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
          path: '/appbar',
          builder: (context, state) => const AppbarScreen(),
        ),
        GoRoute(
          path: '/cardIncidence',
          builder: (context, state) => const CardIncidenceListScreen(),
        ),
        GoRoute(
          path: '/incidenceSection',
          builder: (context, state) => const IncidenceSectionScreen(),
        ),
        GoRoute(
          path: '/buttomSheetSection',
          builder: (context, state) => const BottomSheetScreen(),
        )
      ],
    );
  },
);
