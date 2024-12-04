import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Learn"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: PngImage(name: ImageItems().appleWithBook),
          ),
          SizedBox(
            height: 256,
            width: 256,
            child: PngImage(
              name: ImageItems().besiktas,
            ),
          ),
          Image.network(
            "https://www.shutterstock.com/image-vector/turkey-ankara-city-skyline-architecture-260nw-712638667.jpg",
            errorBuilder: (context, error, stackTrace) =>
                PngImage(name: ImageItems().error),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "apple2";
  final String besiktas = "besiktas";
  final String error = "error";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _newNamePath,
      //fit: BoxFit.cover,
    );
  }

  String get _newNamePath => "assets/image/$name.png";
}
