import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Learn"),
      ),
      body: Column(
        children: [
          TextButton(onPressed: () {}, child: Text("Button Tıkla")),
          ElevatedButton(
              onPressed: (() {}), child: Text("Elevated Button Tıkla")),
          IconButton(
              onPressed: (() {}), icon: Icon(Icons.arrow_back_ios_new_sharp)),
          FloatingActionButton(
            onPressed: (() {}),
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
              onPressed: (() {}), child: const Text("Outline Button")),
              InkWell(onTap: (() {
                
              }), child: const Text("Bir ögeyi tıklanabilir yapar !"),)
        ],
      ),
    );
  }
}
