import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: Text(
          "Column Row Learn",
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.red.shade400,
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.blue.shade800,
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.pink.shade400,
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.purple.shade400,
                      )),
                ],
              )),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [Text("data"), Text("data"), Text("data")],
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber.shade400,
              )),
          SizedBox(
            height: 200,
            child: Row(
              children: [
                SizedBox(
                    child: Column(
                  children: const [
                    Expanded(child: Text("data")),
                    Expanded(child: Text("data")),
                    Expanded(child: Text("data")),
                    Expanded(child: Text("data")), 
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProjectContainerSizes {
  static const cardWeight = 200;
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black),
    );
  }
}
