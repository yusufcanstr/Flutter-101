import 'package:flutter/material.dart';

import '101/statefull_life_cycle_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.red),
          appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const StatefllLifeCycleLearn(message: "bababa",),
    );
  }
}
