import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlylive/widgets/atoms/url_launcher.dart';
// import 'package:onlylive/theme/theme.dart';

// class TalentSns extends StatelessWidget {
//   const TalentSns({ required this.icon, required this.path });
//   final String icon;
//   final String path;

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class TalentSns extends StatelessWidget {
  const TalentSns({required this.url, Key? kye}) : super(key: kye);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () => openUrl(url: url),
          child: const Icon(FontAwesomeIcons.instagram),
        )
      ],
    );
  }
}
