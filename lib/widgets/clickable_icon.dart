import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ClickableIcon extends StatelessWidget {
  final String url;
  final IconData icon;

  const ClickableIcon({Key? key, required this.url, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launch(url);
      },
      child: Icon(
        icon,
        color: Colors.white,
        size: 30.0,
      ),
    );
  }
}
