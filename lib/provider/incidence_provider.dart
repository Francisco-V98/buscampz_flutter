import 'package:buscampz_flutter/model/incidence_model.dart';
import 'package:buscampz_flutter/service/incidence_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final incidenceProvider = StateNotifierProvider<IncidenceNotifier, IncidenceState>((ref) {
  return IncidenceNotifier(IncidenceService());
});

class IncidenceNotifier extends StateNotifier<IncidenceState> {
  final IncidenceService _incidenceService;

  IncidenceNotifier(this._incidenceService) : super(IncidenceState()) {
    _fetchIncidence();
  }

  Future<void> _fetchIncidence() async {
    state = state.copyWith(isLoading: true);
    print("Fetching incidence data...");

    try {
      IncidenceModel incidenceData = await _incidenceService.getIncidenceService();
      state = state.copyWith(incidenceModel: incidenceData, isLoading: false);
      print("Incidence data fetched successfully");
    } catch (e) {
      state = state.copyWith(isLoading: false);
      print("Error fetching incidence data: $e");
    }
  }
}

class IncidenceState {
  final IncidenceModel? incidenceModel;
  final bool isLoading;

  IncidenceState({this.isLoading = true, this.incidenceModel});

  IncidenceState copyWith({
    bool? isLoading,
    IncidenceModel? incidenceModel,
  }) =>
      IncidenceState(
          isLoading: isLoading ?? this.isLoading,
          incidenceModel: incidenceModel ?? this.incidenceModel);
}
