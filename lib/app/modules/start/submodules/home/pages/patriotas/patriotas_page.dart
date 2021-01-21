import 'package:brasil_paralelo/app/shared/models/content_model.dart';
import 'package:brasil_paralelo/app/shared/models/content_status.enum.dart';
import 'package:brasil_paralelo/app/shared/theme.dart';
import 'package:brasil_paralelo/app/shared/widgets/paywall_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'patriotas_controller.dart';

class PatriotasPage extends StatefulWidget {
  final String title;
  const PatriotasPage({Key key, this.title = "Patriotas"}) : super(key: key);

  @override
  _PatriotasPageState createState() => _PatriotasPageState();
}

class _PatriotasPageState extends ModularState<PatriotasPage, PatriotasController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    _settingModalBottomSheet(context, 'PATRIOTAS');
    return Scaffold(
      backgroundColor: BPTheme.main_gray,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/fake_bg.png',
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _settingModalBottomSheet(context, String content) async {
    await Future.delayed(Duration(seconds: 1));
    ContentStatus cs = stringToContentEnum(content);
    if (cs == ContentStatus.PREMIUM || cs == ContentStatus.PATRIOTA || cs == ContentStatus.MECENAS) {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext bc) {
            return PayWallWidget(
              content: content,
            );
          });
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
