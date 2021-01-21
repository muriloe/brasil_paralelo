import 'package:brasil_paralelo/app/shared/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
    controller.getHightLights();
    controller.getSeries();

    return Scaffold(
      backgroundColor: BPTheme.main_gray,
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
          Observer(builder: (_) {
            if (controller.newsList != null) {
              return CarouselSlider(
                options: CarouselOptions(
                  height: 160.0,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.80,
                ),
                items: controller.newsList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: HighLightItemWidget(
                            contentStatus: controller.stringToContentEnum(i.contentType),
                            imageUrl: i.imageUrl,
                          ));
                    },
                  );
                }).toList(),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
          Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
          Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(20, 40, 0, 0)),
              Text(
                'Séries',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ],
          ),
          Observer(builder: (_) {
            if (controller.seriesList != null) {
              return CarouselSlider(
                options: CarouselOptions(
                  height: 160.0,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.30,
                ),
                items: controller.seriesList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Colors.transparent),
                          child: HighLightItemWidget(
                            contentStatus: controller.stringToContentEnum(i.contentType),
                            imageUrl: i.imageUrl,
                          ));
                    },
                  );
                }).toList(),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
        ],
      ),
    );
  }
}
