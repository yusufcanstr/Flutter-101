import 'dart:ui';

import 'package:flutter/material.dart';

class TextLearn extends StatelessWidget {
  const TextLearn({
    Key? key,
  }) : super(key: key);

  final String city = "Çankırı";
  final String city32 = "Ankara";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ("Ben $city da oturuyorum."),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: ProjectStyles.welcomeStyle,
          ),
          Text(
            ("Ben $city32 da oturuyorum."),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.lightBlue),
          ),
        ],
      )),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      color: Color.fromARGB(195, 94, 5, 121),
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      letterSpacing: 2,
      fontSize: 17,
      fontWeight: FontWeight.w600);
}
