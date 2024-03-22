import 'package:flutter/material.dart';
import 'package:news_flutter_app/pages/home_page.dart';

AppBar detailBar(context) {
  return AppBar(
    title: const Text('Detail'),
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios_rounded),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.ios_share_rounded),
      ),
    ],
  );
}
