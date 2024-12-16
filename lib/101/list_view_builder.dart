import 'package:flutter/material.dart';

class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({super.key});

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text("List View Builer"),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(child: Image.network("https://picsum.photos/200/300")),
                Text("$index")
              ],
            ),
          );
        },
        itemCount: 15,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.amber.shade700,
          );
        },
      ),
    );
  }
}
