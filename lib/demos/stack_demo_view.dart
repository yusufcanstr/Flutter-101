import 'package:flutter/material.dart';
import 'package:information_card/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});

  final _cardHeight = 120.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade400,
        title: Text(
          "Stack Demo View",
          style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  bottom: _cardHeight / 2,
                  child: const RandomImage(),
                ),
                Positioned(
                  height: _cardHeight,
                  bottom: 0,
                  width: 200,
                  child: const Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}
