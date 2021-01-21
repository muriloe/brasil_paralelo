import 'package:brasil_paralelo/app/modules/start/pages/profile/profile_page.dart';
import 'package:brasil_paralelo/app/modules/start/pages/search/search_page.dart';
import 'package:brasil_paralelo/app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'start_controller.dart';
import 'submodules/home/home_module.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key key, this.title = "Start"}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageViewController,
        children: [
          RouterOutlet(
            module: HomeModule(),
          ),
          SearchPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: controller.pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              onTap: (index) {
                controller.pageViewController.jumpToPage(index);
              },
              currentIndex: controller.pageViewController?.page?.round() ?? 0,
              backgroundColor: BPTheme.primary,
              fixedColor: BPTheme.btn_main,
              unselectedItemColor: BPTheme.light,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
              ],
            );
          }),
    );
  }
}
