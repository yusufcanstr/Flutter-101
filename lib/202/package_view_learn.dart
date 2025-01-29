import 'package:flutter/material.dart';
import 'package:information_card/202/package/launcher_mixin.dart';
import 'package:information_card/202/package/loading_bar.dart';

class PackageViewLearn extends StatefulWidget {
  const PackageViewLearn({super.key});

  @override
  State<PackageViewLearn> createState() => _PackageViewLearnState();
}

class _PackageViewLearnState extends State<PackageViewLearn> with LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent.shade100,
      appBar: AppBar(
        title: const Text('Package View Learn', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.amberAccent.shade700,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launchURL('https://flutter.dev');
        },
        child: const Icon(Icons.arrow_back),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            LoadingBar(size: 50),
          ],
        ),
      ),
    );
  }
}
