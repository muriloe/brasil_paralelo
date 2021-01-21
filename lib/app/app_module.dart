import 'package:brasil_paralelo/app/modules/start/start_module.dart';
import 'package:brasil_paralelo/app/shared/repository/app_repository.dart';
import 'package:brasil_paralelo/app/shared/services/app_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:brasil_paralelo/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppService(i.get<AppRepository>())),
        Bind((i) => AppRepository()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: StartModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
