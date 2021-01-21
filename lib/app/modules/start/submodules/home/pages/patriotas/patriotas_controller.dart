import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'patriotas_controller.g.dart';

@Injectable()
class PatriotasController = _PatriotasControllerBase with _$PatriotasController;

abstract class _PatriotasControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
