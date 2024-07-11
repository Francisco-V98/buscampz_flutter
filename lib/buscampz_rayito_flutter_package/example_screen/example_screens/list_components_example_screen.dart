import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:buscampz_flutter/buscampz_rayito_flutter_package/config/router/routers.dart';

class ListComponentsExampleScreen extends StatelessWidget {
  const ListComponentsExampleScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: _BodyListComponentsExampleScreen());
  }
}

class _BodyListComponentsExampleScreen extends StatelessWidget {
  const _BodyListComponentsExampleScreen();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _CustomListTile(
          title: 'Example',
          subTitle: 'Example Screen',
          location: AppRoutesPaths.example.path,
        ),
        _CustomListTile(
          title: 'Incident TextField',
          subTitle: 'Incident TextField Screen',
          location: AppRoutesPaths.incidentTextField.path,
        ),
        _CustomListTile(
          title: 'DetailIncidentTextField Screen',
          subTitle: 'DetailIncident TextField Screen',
          location: AppRoutesPaths.detailIncidenceTextForm.path,
        ),
        _CustomListTile(
          title: 'SendEvidence Button',
          subTitle: 'SendEvidence Button Screen',
          location: AppRoutesPaths.sendEvidenceButton.path,
        ),
        _CustomListTile(
          title: 'ResponseClient Card',
          subTitle: 'ResponseClient Card Screen',
          location: AppRoutesPaths.responseClientCard.path,
        ),
        _CustomListTile(
          title: 'ButtonSend With TextField',
          subTitle: 'ButtonSend With TextField Screen',
          location: AppRoutesPaths.buttonSendTextField.path,
        ),
        _CustomListTile(
          title: 'AppBar',
          subTitle: 'Example Screen AppBar',
          location: AppRoutesPaths.appbar.path,
        ),
        _CustomListTile(
          title: 'Card Incidence',
          subTitle: 'Example Screen Card Incidence',
          location: AppRoutesPaths.cardIncidence.path,
        ),
        _CustomListTile(
          title: 'Incidence Section',
          subTitle: 'data user, detail incidence',
          location: AppRoutesPaths.incidenceSection.path,
        ),
        _CustomListTile(
          title: 'ButtonSheet Section',
          subTitle: 'buttom sheet and components',
          location: AppRoutesPaths.bottomSheetSection.path,
        ),
        _CustomListTile(
          title: 'IncidenceSectionScreen',
          subTitle: 'Incidence Section Screen',
          location: AppRoutesPaths.incidenceCreateScreen.path,
        ),
        _CustomListTile(
          title: 'IncidenceViewScreen',
          subTitle: 'Incidence View Screen',
          location: AppRoutesPaths.incidenceViewScreen.path,
        ),
      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;

  const _CustomListTile({
    required this.title,
    required this.subTitle,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(location),
    );
  }
}
