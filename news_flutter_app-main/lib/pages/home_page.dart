import 'package:flutter/material.dart';
import 'package:news_flutter_app/component/explore_bar.dart';
import 'package:news_flutter_app/controller/get_news_api.dart';
import '../component/news_flutter_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            FutureBuilder<String>(
              future: getArticles(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                  case ConnectionState.active:
                  case ConnectionState.waiting:
                    return const CircularProgressIndicator();
                  case ConnectionState.done:
                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    }

                    return Container(
                      margin: const EdgeInsets.only(top: 180),
                      child: ListView.builder(
                        itemCount: article.length,
                        itemBuilder: (context, index) {
                          return newsFlutterCard(index,context);
                        },
                      ),
                    );
                }
              },
            ),
            expolerBar(),
          ],
        ),
      ),
    );
  }
}
