import 'dart:convert';

import 'package:http/http.dart' as http;
import '../Models/article.dart';

final List<Article> article = [];
Future<String> getArticles() async {
  const url =
      'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=c6f505c4c0c9495dacc2929ceb6468fa';
  final response = await http.get(
    Uri.parse(url),
  );
  //convert the response to Map
  final body = jsonDecode(response.body) as Map<String, dynamic>;
  article.clear();
  for (final item in body['articles']) {
    if (item['urlToImage'] == null ||
        item['author'] == null ||
        item['content'] == null ||
        item['publishedAt'] == null ||
        item['source'] == null ||
        item['title'] == null ||
        item['description'] == null) continue;
    article.add(
      Article.fromMap(item),
    );
  }
  return response.body;
}
