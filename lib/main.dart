import 'package:flutter/material.dart';
import 'package:information_card/101/button_learn.dart';
import 'package:information_card/101/container_sized_box_learn.dart';
import 'package:information_card/101/scaffold_learn.dart';
import 'package:information_card/101/text_learn.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: ButtonLearn(),
    );
  }
}
