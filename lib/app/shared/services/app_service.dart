import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:brasil_paralelo/app/shared/repository/app_repository.dart';

class AppService extends Disposable {
  final AppRepository _repository;

  AppService(this._repository);

  Future<Response> getHightLights() async {
    return await _repository.getHightLights();
  }

  Future<Response> getSeries() async {
    return await _repository.getSeries();
  }

  @override
  void dispose() {}
}
