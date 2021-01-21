import 'package:brasil_paralelo/app/shared/models/content_model.dart';
import 'package:brasil_paralelo/app/shared/models/content_status.enum.dart';
import 'package:brasil_paralelo/app/shared/theme.dart';
import 'package:brasil_paralelo/app/shared/widgets/paywall_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
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
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(content.link),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    _settingModalBottomSheet(context, content);
    return Scaffold(
      backgroundColor: BPTheme.main_gray,
      appBar: AppBar(
        backgroundColor: BPTheme.primary,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text(content.title),
      ),
      body: Column(
        children: <Widget>[
          YoutubePlayerBuilder(
              player: YoutubePlayer(
                controller: _controller,
              ),
              builder: (context, player) {
                return Column(
                  children: [
                    player,
                  ],
                );
              }),
          buildSocialButtons(),
        ],
      ),
    );
  }

  Future<void> _settingModalBottomSheet(context, ContentModel content) async {
    await Future.delayed(Duration(seconds: 1));
    ContentStatus cs = controller.stringToContentEnum(content.contentType);
    if (cs == ContentStatus.PREMIUM || cs == ContentStatus.PATRIOTA || cs == ContentStatus.MECENAS) {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext bc) {
            return PayWallWidget(
              content: content.contentType,
            );
          });
    }
  }

  Widget buildSocialButtons() {
    return Row(
      children: [
        Padding(padding: EdgeInsets.fromLTRB(24, 50, 0, 0)),
        GestureDetector(
          onTap: () => {controller.like = !controller.like},
          child: new Observer(builder: (_) {
            return controller.like == true
                ? IconTheme(data: new IconThemeData(color: Colors.white), child: new Icon(Icons.favorite))
                : IconTheme(
                    data: new IconThemeData(color: Colors.white),
                    child: new Icon(Icons.favorite_border_outlined),
                  );
          }),
        ),
        Expanded(
          child: Align(
              alignment: Alignment.centerRight,
              child: IconTheme(
                data: new IconThemeData(color: Colors.white),
                child: new Icon(Icons.cast_outlined),
              )),
        ),
        Padding(padding: EdgeInsets.fromLTRB(0, 50, 24, 0)),
      ],
    );
  }
}
