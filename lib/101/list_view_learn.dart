import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blue.shade200,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            child: Text(
              "merhaba",
              style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.black),
              maxLines: 1,
              textScaleFactor: 0.4,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.lightGreen,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.lightGreen,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.lightGreen,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
          IconButton(onPressed: (() {}), icon: const Icon(Icons.close)),
          FittedBox(
            child: Text(
              "merhaba",
              style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.black),
              maxLines: 1,
              textScaleFactor: 0.4,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.yellow,
                  width: 100,
                ),
                Container(
                  color: Colors.lightGreen,
                  width: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                ),
                Container(
                  color: Colors.lightGreen,
                  width: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                ),
                Container(
                  color: Colors.lightGreen,
                  width: 100,
                ),
              ],
            ),
          ),
          IconButton(onPressed: (() {}), icon: const Icon(Icons.close)),
          const _ListDemo(),
        ],

        //xxxxxx
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({super.key});

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
    print("Hello Yusufcan");
  }

  @override
  void dispose() {
    super.dispose();
    print("exit");
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Placeholder(),
    );
  }
}
