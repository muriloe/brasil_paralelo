import 'package:brasil_paralelo/app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:brasil_paralelo/app/modules/start/submodules/home/widgets/hightlight_item.widget.dart';
import 'main_controller.dart';
import 'package:brasil_paralelo/app/shared/models/content_status.enum.dart';

class MainPage extends StatefulWidget {
  final String title;
  const MainPage({Key key, this.title = "Main"}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends ModularState<MainPage, MainController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BPTheme.main_gray,
      body: Column(
        children: <Widget>[
          HighLightItemWidget(
            contentStatus: ContentStatus.FREE,
          )
        ],
      ),
    );
  }
}
