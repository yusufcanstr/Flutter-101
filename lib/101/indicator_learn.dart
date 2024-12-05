import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          actions: const [CenterProgressIndicator()],
          backgroundColor: Colors.blue.shade400,
          title: Text(
            "Indicator Learn",
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.white),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: const LinearProgressIndicator());
  }
}

class CenterProgressIndicator extends StatelessWidget {
  const CenterProgressIndicator({
    Key? key,
  }) : super(key: key);

  final redColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(
      //color: redColor,
      strokeWidth: 10,
      value: 0.4,
      //backgroundColor: Colors.red.shade600,
    ));
  }
}
