import 'package:flutter/material.dart';
import 'package:news_flutter_app/component/style.dart';
import 'package:news_flutter_app/controller/get_news_api.dart';
import 'package:news_flutter_app/pages/news_detail.dart';

Container newsFlutterCard(index, context) {
  final scr = article[index];
  final publishedAt = DateTime.parse(scr.publishedAt!);
  final now = DateTime.now();
  final timeElapsed = now.difference(publishedAt);
  return Container(
    // padding: const EdgeInsets.all(5),
    margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
    decoration: boxDecorationCard,
    child: TextButton(
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network('${scr.urlToImage}',
                  fit: BoxFit.cover, width: 150, height: 150),
            ),
          ),
          sizeW10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                textTitle(scr.getTitle),
                sizeH10,
                textAuthor('By ${scr.author}'),
                sizeH10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(flex: 1, child: textBox(scr.getName)),
                    Flexible(
                      flex: 1,
                      child: timeElapsed.inHours > 24
                          ? textBox('${timeElapsed.inDays} days ago')
                          : textBox('${timeElapsed.inHours} hours ago'),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetail(index: index),
          ),
        );
      },
    ),
  );
}
