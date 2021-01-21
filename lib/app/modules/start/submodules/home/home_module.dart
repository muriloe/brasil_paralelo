import 'pages/mecenas/mecenas_controller.dart';
import 'pages/premium/premium_controller.dart';
import 'pages/patriotas/patriotas_controller.dart';
import 'package:brasil_paralelo/app/modules/start/submodules/home/pages/content/content_page.dart';

import 'pages/content/content_controller.dart';
import 'pages/main/main_controller.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $MecenasController,
        $PremiumController,
        $PatriotasController,
        $ContentController,
        $MainController,
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter('/content', child: (_, args) => ContentPage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
