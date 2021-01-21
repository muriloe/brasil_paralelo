import 'package:brasil_paralelo/app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key key, this.title = "Profile"}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BPTheme.primary,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: BPTheme.main_gray,
        centerTitle: true,
        title: Text('Perfil'),
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => {},
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20)),
              Center(
                child: Text(
                  'Seja Membro',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900, color: Colors.white),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
              promoCard(context, 'patriota', '10', BPTheme.btn_main, 'Me tornar Patriota!'),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
              promoCard(context, 'premium', '49', BPTheme.btn_main, 'Quero ser Premium!'),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
              promoCard(context, 'mecanas', '490', BPTheme.btn_gold, 'Virar um Mecenas!'),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
              Text(
                'Ja tenho conta. Logar!',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: BPTheme.btn_main),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
            ],
          ),
        ),
      ),
    );
  }

  showToast() {
    Fluttertoast.showToast(
        msg: 'É necessário me contratar para ter acesso a essa funcionalidade :)',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  Widget promoCard(context, String title, String price, Color btnColor, String btnText) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
          color: BPTheme.card,
          width: MediaQuery.of(context).size.width - 60,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title.toUpperCase(),
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    Container(
                      child: ButtonTheme(
                        minWidth: 150,
                        child: RaisedButton(
                            color: btnColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0), side: BorderSide(color: btnColor)),
                            padding: EdgeInsets.fromLTRB(0, 13, 0, 13),
                            textColor: Colors.white,
                            onPressed: () {
                              showToast();
                            },
                            child: Text(btnText)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RichText(
                        text: new TextSpan(
                          // Note: Styles for TextSpans must be explicitly defined.
                          // Child text spans will inherit styles from parent
                          style: new TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            new TextSpan(
                              text: 'R\$',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.white),
                            ),
                            new TextSpan(
                              text: price,
                              style: TextStyle(fontSize: 48, fontWeight: FontWeight.w500, color: Colors.white),
                            ),
                            new TextSpan(
                              text: ',00  / mês',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          )),
    );
  }
}
