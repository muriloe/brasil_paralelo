import 'package:brasil_paralelo/app/shared/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:brasil_paralelo/app/shared/models/content_status.enum.dart';
import 'package:flutter/material.dart';

class HighLightItemWidget extends StatelessWidget {
  final String imageUrl;
  final ContentStatus contentStatus;

  const HighLightItemWidget(
      {Key key,
      this.imageUrl = 'https://s2.glbimg.com/PFx_VymnhJBoEH3PwffefKZrF6M=/i.glbimg.com/og/ig/infoglobo1/f/original/2020/09/23/brasilparalelo.jpg',
      @required this.contentStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            width: MediaQuery.of(context).size.width,
            height: 169,
            fit: BoxFit.cover,
          ),
          Container(
            width: 50,
            height: 50,
            child: CustomPaint(
              size: Size.infinite,
              painter: BannerPainter(
                  message: getBannerText(contentStatus),
                  textStyle: TextStyle(color: Colors.black, letterSpacing: 1, fontWeight: FontWeight.w700),
                  textDirection: Directionality.of(context),
                  layoutDirection: Directionality.of(context),
                  location: BannerLocation.topStart,
                  color: getBannerColor(contentStatus)),
            ),
          )
        ],
      ),
    );
  }

  getBannerColor(ContentStatus cs) {
    switch (cs) {
      case ContentStatus.FREE:
        return BPTheme.btn_main;
        break;
      case ContentStatus.MECENAS:
        return BPTheme.mecenas;
        break;
      case ContentStatus.PATRIOTA:
        return BPTheme.patriota;
        break;
      case ContentStatus.PREMIUM:
        return BPTheme.btn_gold;
        break;
      default:
        return BPTheme.btn_main;
    }
  }

  getBannerText(ContentStatus cs) {
    switch (cs) {
      case ContentStatus.FREE:
        return 'Grátis';
        break;
      case ContentStatus.MECENAS:
        return 'Mecenas';
        break;
      case ContentStatus.PATRIOTA:
        return 'Patriota';
        break;
      case ContentStatus.PREMIUM:
        return 'Premium';
        break;
      default:
        return '?';
    }
  }
}
