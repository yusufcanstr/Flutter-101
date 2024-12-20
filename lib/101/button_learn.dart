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
          TextButton(
              onPressed: () {},
              child: Text(
                "Button Tıkla",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.black45;
                  }
                  return Colors.red;
                }),
              )),
          ElevatedButton(
              onPressed: (() {}), child: Text("Elevated Button Tıkla")),
          IconButton(
              onPressed: (() {}), icon: Icon(Icons.arrow_back_ios_new_sharp)),
          FloatingActionButton(
            onPressed: (() {}),
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10)),
              onPressed: (() {}),
              child: const Text("Out")),
          InkWell(
            onTap: (() {}),
            child: const Text("Bir ögeyi tıklanabilir yapar !"),
          ),
          Container(
            height: 200,
            color: Colors.black,
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: (() {}),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 40, left: 40),
                child: Text(
                  "Place Holder",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ))
        ],
      ),
    );
  }
}
