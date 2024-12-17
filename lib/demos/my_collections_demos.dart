import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade300,
      appBar: AppBar(
        title: Text(
          "My Collections",
          style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
          itemCount: _items.length,
          padding: PaddingUtility().paddingHorizontal,
          itemBuilder: ((context, index) {
            return _CategoryCard(model: _items[index]);
          })),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: Padding(
        padding: PaddingUtility().paddingGeneral,
        child: Column(
          children: [
            Container(
              color: Colors.green,
              child: Image.asset(
                _model.imagePath,
                fit: BoxFit.fill,
                height: 200,
              ),
            ),
            Padding(
              padding: PaddingUtility().paddingTop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(_model.title), Text("${_model.price} ETH")],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;

  CollectionModel(this.imagePath, this.title, this.price);
}

class CollectionItems {
  late final List<CollectionModel> items;
  CollectionItems() {
    items = [
      CollectionModel(
          ProjectImages.imageCollection1, ProjectCityNames().istanbul, ProjectCollectionsPrice().istanbulPrice),
      CollectionModel(ProjectImages.imageCollection2, ProjectCityNames().ankara, ProjectCollectionsPrice().ankaraPrice),
      CollectionModel(ProjectImages.imageCollection3, ProjectCityNames().mersin, ProjectCollectionsPrice().mersinPrice),
      CollectionModel(
          ProjectImages.imageCollection1, ProjectCityNames().istanbul, ProjectCollectionsPrice().istanbulPrice),
      CollectionModel(ProjectImages.imageCollection2, ProjectCityNames().ankara, ProjectCollectionsPrice().ankaraPrice),
      CollectionModel(ProjectImages.imageCollection3, ProjectCityNames().mersin, ProjectCollectionsPrice().mersinPrice),
    ];
  }
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImages {
  static const imageCollection1 = "assets/image/istanbul.jpg";
  static const imageCollection2 = "assets/image/ankara.jpg";
  static const imageCollection3 = "assets/image/mersin.jpg";
}

class ProjectCityNames {
  final String istanbul = "İstanbul";
  final String ankara = "Ankara";
  final String mersin = "Mersin";
}

class ProjectCollectionsPrice {
  final int istanbulPrice = 12400;
  final int ankaraPrice = 9700;
  final int mersinPrice = 7500;
}
