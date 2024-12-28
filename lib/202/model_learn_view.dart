import 'package:flutter/material.dart';
import 'package:information_card/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {

  var user9 = PostModel8(title: 'İzmir', body: 'Karşıyaka');

  @override
  void initState() {
    super.initState();

    final user1 = PostModel();
    user1.userId = 1;

    PostModel2 user2 = PostModel2(1, 06, 'Ankara', 'Pursaklar');
    user2.title = 'çankırı';

    final user3 = PostModel3(1, 06, 'Ankara', 'Pursaklar');
    //user3.title = 'çankırı'; //hata verir

    final user4 = PostModel4(userId: 1, id: 06, title: 'Ankara', body: 'Pursaklar');
    //user4.title = 'çankırı'; //hata verir


    //service tarafından gelen verilerde null olabilir
    final user8 = PostModel8(title: 'İzmir');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = PostModel8(title: 'Ankara');
            user9.updateBody('açıklama eklendi');
          });
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.blueAccent.shade100,
      appBar: AppBar(
        title: Text(user9.title ?? "Not has any data"),
        backgroundColor: Colors.blueAccent.shade700,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user9.body ?? "Not has any data" , style: const TextStyle(fontSize: 24)),
          ]
        ),
      ),
    );
  }
}