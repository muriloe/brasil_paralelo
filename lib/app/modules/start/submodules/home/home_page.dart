import 'package:brasil_paralelo/app/modules/start/submodules/home/pages/main/main_page.dart';
import 'package:brasil_paralelo/app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: BPTheme.primary,
          shadowColor: Colors.transparent,
          toolbarHeight: 50.0,
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white.withOpacity(0.3),
            tabs: [
              Tab(
                text: 'Home',
              ),
              Tab(
                text: 'Patriotas',
              ),
              Tab(
                text: 'Premium',
              ),
              Tab(
                text: 'Mecenas',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MainPage(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
