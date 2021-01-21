import 'package:brasil_paralelo/app/shared/models/content_status.enum.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'content_controller.g.dart';

@Injectable()
class ContentController = _ContentControllerBase with _$ContentController;

abstract class _ContentControllerBase with Store {
  @observable
  bool like = true;

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
