class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;
}

//burdaki degerleri degistirerek farkli model olusturabiliriz
class PostModel2 {
  int userId;
  int id;
  String title;
  String body;

  PostModel2(this.userId, this.id, this.title, this.body);
}

//burada ise degerleri değiştirilemez olarak tanımladık
class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;
  PostModel3(this.userId, this.id, this.title, this.body);
}

class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;
  PostModel4({required this.userId, required this.id, required this.title, required this.body});
}

class PostModel8 {
  final int? userId;
  final int? id;
  final String? title;
  String? body;
  PostModel8({this.userId, this.id, this.title, this.body});

  void updateBody(String? data) {
    if (data != null && data.isNotEmpty) {
      body = data;
    }
  }
}
