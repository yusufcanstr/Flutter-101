import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: Text("ü" * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text("z" * 100),
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
            constraints: const BoxConstraints(maxWidth: 200, minWidth: 150),
            child: Text("ank" * 100),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(12),
            //decoration: ProjectContainerDecoration(),
            //decoration: BoxDecoration(),
            //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
    );
  }
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [Colors.red, Colors.black],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.green,
              offset: Offset(0.1, 1),
            ),
          ],
          border: Border.all(
            width: 10,
            color: Colors.white, 
          ),
        );
}
