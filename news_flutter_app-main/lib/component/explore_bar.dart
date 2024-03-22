import 'package:flutter/material.dart';
import 'package:news_flutter_app/component/search_bar.dart';
import 'package:news_flutter_app/component/style.dart';
import 'package:intl/intl.dart';

String formattedDate = DateFormat('EEEE, dd MMMM  yyyy').format(DateTime.now());
Container expolerBar() {
  return Container(
    color: secondaryColor,
    height: 180,
    margin: const EdgeInsets.only(top: 60),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textDateTime(formattedDate),
          textTitle('Explore'),
          sizeH10,
          searchAnchor(),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buttonAnchor('All', () {}),
                buttonAnchor('Technology', () {}),
                buttonAnchor('Bussines', () {}),
                buttonAnchor('Health', () {}),
                buttonAnchor('Science', () {}),
                buttonAnchor('Sports', () {}),
                buttonAnchor('Politics', () {}),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
