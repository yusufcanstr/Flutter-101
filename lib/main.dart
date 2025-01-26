import 'package:flutter/material.dart';
import '202/service/comments_learn_view.dart';

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
          progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.red),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const CommentsLearnView(),
    );
  }
}
