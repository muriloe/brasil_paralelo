import 'package:brasil_paralelo/app/shared/models/content_status.enum.dart';
import 'package:brasil_paralelo/app/shared/theme.dart';
import 'package:flutter/material.dart';

class PayWallWidget extends StatelessWidget {
  final String content;

  const PayWallWidget({Key key, @required this.content}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: BPTheme.modal,
      child: new Wrap(
        children: <Widget>[
          Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              Text(
                getTitle(stringToContentEnum(content)),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 16, 0, 0)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(23, 0, 0, 0)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 60,
                    child: Text(
                      getDescription(stringToContentEnum(content)),
                      textAlign: TextAlign.left,
                      style: TextStyle(letterSpacing: 1, fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 23, 0)),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
              Container(
                color: BPTheme.btn_main,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
                    Center(
                        child: Text(getBtnText(stringToContentEnum(content)),
                            style: TextStyle(letterSpacing: 1, fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white))),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  getTitle(ContentStatus status) {
    switch (status) {
      case ContentStatus.PREMIUM:
        return 'Área exclusiva para membros Premium';
        break;
      case ContentStatus.MECENAS:
        return 'Área exclusiva para membros Mecenas';
        break;
      case ContentStatus.PATRIOTA:
        return 'Área exclusiva para membros Patriotas';
        break;
      default:
        return 'Área exclusiva';
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

  getDescription(ContentStatus status) {
    String patriota =
        "Se torne um membro patriota e obtenhas os seguintes benefícios: \n- Conteúdo inédito todo mês \n- Podcasts Cultura Paralela \n- Debates exclusivos";
    String mecenas =
        "Se torne um membro mecenas e obtenhas os seguintes benefícios: \n- Acesso a relatórios de impacto \n- Tenha acesso completo ao nosso conteúdo Premium \n- Impacte a vida de mais pessoas";
    String premium =
        "Se torne um membro premium e obtenhas os seguintes benefícios: \n- Todos os cursos do Núcleo de Formação \n- Mais de 300 entrevistas exclusivas \n- Programas inéditos e exclusivos";
    switch (status) {
      case ContentStatus.PREMIUM:
        return premium;
        break;
      case ContentStatus.MECENAS:
        return mecenas;
        break;
      case ContentStatus.PATRIOTA:
        return patriota;
        break;
      default:
        return ' ';
    }
  }

  getBtnText(ContentStatus status) {
    switch (status) {
      case ContentStatus.PREMIUM:
        return 'Quero me tornar Premium (R\$ 49,00 / mês)';
        break;
      case ContentStatus.MECENAS:
        return 'Quero me tornar Mecenas (R\$ 490,00 / mês)';
        break;
      case ContentStatus.PATRIOTA:
        return 'Quero me tornar Patriota (R\$ 10,00 / mês)';
        break;
      default:
        return ' ';
    }
  }
}
