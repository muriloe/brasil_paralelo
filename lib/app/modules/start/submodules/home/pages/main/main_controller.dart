import 'package:brasil_paralelo/app/shared/models/content_model.dart';
import 'package:brasil_paralelo/app/shared/models/content_status.enum.dart';
import 'package:brasil_paralelo/app/shared/services/app_service.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

part 'main_controller.g.dart';

@Injectable()
class MainController = _MainControllerBase with _$MainController;

abstract class _MainControllerBase with Store {
  final AppService _appService;
  _MainControllerBase(this._appService);

  @observable
  List<ContentModel> newsList;

  @observable
  List<ContentModel> seriesList;

  @action
  Future<void> getHightLights() async {
    Response result = await _appService.getHightLights();
    newsList = List<ContentModel>();
    try {
      for (var i = 0; i < result.data.length; i++) {
        var temp = ContentModel.fromJson(result.data[i]);
        newsList.add(temp);
      }
    } catch (err) {
      print(err);
    }
  }

  @action
  Future<void> getSeries() async {
    Response result = await _appService.getSeries();
    seriesList = List<ContentModel>();
    try {
      for (var i = 0; i < result.data.length; i++) {
        var temp = ContentModel.fromJson(result.data[i]);
        seriesList.add(temp);
      }
    } catch (err) {
      print(err);
    }
  }

  stringToContentEnum(String value) {
    switch (value) {
      case 'FREE':
        return ContentStatus.FREE;
        break;
      case 'PREMIUM':
        return ContentStatus.PREMIUM;
        break;
      case 'MECENAS':
        return ContentStatus.MECENAS;
        break;
      case 'PATRIOTA':
        return ContentStatus.PATRIOTA;
        break;
      default:
        return ContentStatus.PATRIOTA;
    }
  }
}
