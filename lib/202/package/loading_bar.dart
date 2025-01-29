import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatefulWidget {
  const LoadingBar({super.key, required this.size});
  final double? size;

  @override
  State<LoadingBar> createState() => LoadingBarState();
}

class LoadingBarState extends State<LoadingBar> {
  @override
  Widget build(BuildContext context) {
    return SpinKitPianoWave(
      color: Colors.black,
      size: widget.size ?? 40.0,
    );
  }
}
