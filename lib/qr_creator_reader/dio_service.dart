import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import 'finfo.dart';

class DioService {
  final dio = Dio();
  final String _mobileFlightTag = "/MobileFlight/";

  dynamic _getDioRequest(String path) async {
    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    final response = await dio.get(path);
    switch (response.statusCode) {
      case HttpStatus.ok:
        return response.data;
      default:
      // return ErrorModel(response.statusMessage);
    }
  }

  Future<dynamic> getFlightData() async {
    print(
        'https://inflight.romsis.com/MobileFlight/GetFlight/?UcusNo=2'); //To show sending URL
    // print('${param.apiUrl}${_mobileFlightTag}${urlFlightDownloadPath(flightNo)}'); //To show sending URL

    final response = await _getDioRequest(
        'https://inflight.romsis.com/MobileFlight/GetFlight/?UcusNo=2');

    // final response = await _getDioRequest(
    //     '${param.apiUrl}${urlFlightDownloadPath(flightNo)}');

    if (response is ErrorModel) {
      return response;
    } else {
      return FlightInformation.fromJson(response);
    }
  }
}

class ErrorModel {}
