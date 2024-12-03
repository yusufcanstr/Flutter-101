import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Learn"),
      ),
      body: Column(
        children: [
          const _CustomCard(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text("AndroidStudio"),),
            ),
          ),
          const Card(
            //elevation: 100,
            child: SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            //elevation: 100,
            child: SizedBox(
              height: 100,
              width: 100,
            ),
            color: Theme.of(context).colorScheme.error,
          ),
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(12);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
        //elevation: 100,
        margin: ProjectMargin.cardMargin,
        color: Colors.yellow.shade900,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)));
  }
}

//Border
//StadiumBorder(),
//CircleBorder(),
//RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))