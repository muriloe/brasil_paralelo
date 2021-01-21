import 'package:brasil_paralelo/app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'search_controller.dart';

class SearchPage extends StatefulWidget {
  final String title;
  const SearchPage({Key key, this.title = "Search"}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends ModularState<SearchPage, SearchController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BPTheme.primary,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: BPTheme.main_gray,
        centerTitle: true,
        title: Text('Descobrir'),
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Row(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
              Text('O que você quer descobrir', style: TextStyle(color: Colors.white)),
            ],
          ),
          inputCurrency(context)
        ],
      ),
    );
  }

  inputCurrency(context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: TextField(
          minLines: 1,
          maxLines: 1,
          autocorrect: true,
          decoration: InputDecoration(
            hintText: 'Ex: O teatro das tesouras',
            filled: true,
            hoverColor: Colors.white,
            fillColor: BPTheme.input,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: BPTheme.input),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: BPTheme.input),
            ),
          ),
        ),
      ),
    );
  }
}
