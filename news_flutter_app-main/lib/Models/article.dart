import 'package:intl/intl.dart';

class Article {
  final dynamic source;
  final String? title;
  final String? author;
  final String? description;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;
  Article({
    required this.source,
    this.title,
    this.author,
    this.description,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      source: map['source'],
      title: map['title'],
      author: map['author'],
      description: map['description'],
      urlToImage: map['urlToImage'],
      publishedAt: map['publishedAt'],
      content: map['content'],
    );
  }
  List<String> get splitStr => title!.split('|');
  dynamic get getName => '${source['name']}';
  String get getTitle => splitStr[0];

  DateTime get getPublishedAt => DateTime.parse(publishedAt!);

  String get getDateTime =>
      DateFormat('EEEE, dd MMMM  yyyy').format(getPublishedAt);
}
