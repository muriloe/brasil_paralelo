import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'mecenas_controller.g.dart';

@Injectable()
class MecenasController = _MecenasControllerBase with _$MecenasController;

abstract class _MecenasControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
