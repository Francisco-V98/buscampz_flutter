import 'package:buscampz_flutter/model/incidence_model.dart';
import 'package:dio/dio.dart';

class IncidenceService {
  final Dio dio = Dio();
  final String baseUrl =
      "https://c781b1cb-bddf-46b4-b52d-516ad53c692a.mock.pstmn.io";
  final String endPoint = "incidence";

  Future<IncidenceModel> getIncidenceService() async {
    String url = "$baseUrl/$endPoint";
    try {
      Response response = await dio.get(
        url,
      );
      if (response.statusCode == 200) {
        final incidenceResponse = IncidenceModel.fromJson(response.data);
        return incidenceResponse;
      } else {  
        throw Exception("Failed to load COC players: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Failed to load COC data: $e");
    }
  }
}
