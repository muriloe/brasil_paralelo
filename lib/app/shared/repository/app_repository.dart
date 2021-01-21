import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppRepository extends Disposable {
  String baseUrl = '';
  AppRepository();

  Future<Response> getHightLights() async {
    Dio dio = new Dio();
    String url = 'https://run.mocky.io/v3/23bcce67-0e78-4129-b5c5-f834df005cf3';
    Response response = await dio.get(url);
    return response;
  }

  Future<Response> getSeries() async {
    Dio dio = new Dio();
    String url = 'https://run.mocky.io/v3/c1a4cf71-591f-49ba-bd64-46d93f0c6a32';
    Response response = await dio.get(url);
    return response;
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
