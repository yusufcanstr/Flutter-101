import 'package:flutter/material.dart';

class IconViewLearn extends StatelessWidget {
  const IconViewLearn({super.key});

  //final IconColors iconColors = IconsColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello")),
      body: Column(children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message_outlined,
              color: Colors.redAccent,
              size: 32 * 2,
            )),
        SizedBox(
          height: 20,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message_outlined,
              color: Colors.redAccent,
              size: 32,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message_outlined,
              color: Colors.redAccent,
              size: 32,
            )),
      ]),
    );
  }
}

class IconSizes {
  const IconSizes();

  final double iconSmall = 40;
  final double iconMedium = 50;
  final double iconLarge = 60;
}

class IconsColors {
  final Color froly = Color(0xffED617A);
}
