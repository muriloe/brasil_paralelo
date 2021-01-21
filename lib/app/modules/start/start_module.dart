import 'pages/search/search_controller.dart';
import 'pages/profile/profile_controller.dart';
import 'start_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'start_page.dart';

class StartModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $SearchController,
        $ProfileController,
        $StartController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => StartPage()),
      ];

  static Inject get to => Inject<StartModule>.of();
}
