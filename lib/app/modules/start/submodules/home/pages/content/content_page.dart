import 'package:brasil_paralelo/app/shared/models/content_model.dart';
import 'package:brasil_paralelo/app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'content_controller.dart';

class ContentPage extends StatefulWidget {
  final String title;
  const ContentPage({Key key, this.title = "Content"}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends ModularState<ContentPage, ContentController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final ContentModel content = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: BPTheme.main_gray,
      appBar: AppBar(
        backgroundColor: BPTheme.primary,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text(content.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
