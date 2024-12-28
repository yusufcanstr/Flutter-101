import 'package:flutter/material.dart';
import 'package:information_card/202/model_learn_view.dart';
import 'package:information_card/202/tab_learn.dart';

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
      theme: ThemeData.dark().copyWith(
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.yellowAccent,
          unselectedLabelColor: Colors.greenAccent,
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
          progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.red),
          appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const ModelLearnView(),
    );
  }
}
