import 'package:flutter/material.dart';
import 'package:news_flutter_app/component/style.dart';

dynamic searchAnchor() {
  return SearchBar(
    elevation: MaterialStateProperty.all<double>(0),
    backgroundColor: MaterialStateProperty.all<Color>(shadowColor),
    // surfaceTintColor: MaterialStateProperty.all<Color>(Colors.white),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
    ),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    leading: const Icon(Icons.search_rounded),
  );
}
