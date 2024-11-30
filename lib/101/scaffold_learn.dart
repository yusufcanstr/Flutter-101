import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scaffold Learn"),
      ),
      body: Text("merhaba"),
      backgroundColor: Color.fromARGB(255, 138, 255, 187),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      //bottomSheet: const Text("ANKARA"),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_rounded), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_rounded), label: "Profile"),
        BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_rounded), label: "Settings"),
      ]),
    );
  }
}
