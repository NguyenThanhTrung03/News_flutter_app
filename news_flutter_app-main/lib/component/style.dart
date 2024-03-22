import 'package:flutter/material.dart';

const textColor = Color.fromARGB(255, 26, 26, 26);
const textLightColor = Color.fromARGB(255, 100, 100, 100);
const primaryColor = Color.fromARGB(255, 10, 111, 183);
const secondaryColor = Color.fromARGB(255, 255, 255, 255);
final shadowColor = Colors.grey.withOpacity(0.2);

const sizeH10 = SizedBox(height: 10);
const sizeH20 = SizedBox(height: 20);

const sizeW10 = SizedBox(width: 10);
const sizeW20 = SizedBox(width: 20);

const titleTextStyle = TextStyle(
  color: textColor,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
const contentTextStyle = TextStyle(
  color: textColor,
  fontSize: 15,
  fontWeight: FontWeight.normal,
);

const descriptionTextStyle = TextStyle(
  color: textLightColor,
  fontSize: 10,
  fontWeight: FontWeight.normal,
);

const TextStyle textDateTimeStyle = TextStyle(
  color: textLightColor,
  fontSize: 13,
  fontWeight: FontWeight.normal,
);

const TextStyle textAuthorStyle = TextStyle(
  color: textLightColor,
  fontSize: 13,
  fontWeight: FontWeight.normal,
);

Text textBox(text) {
  return Text(
    text,
    style: descriptionTextStyle,
    overflow: TextOverflow.ellipsis,
  );
}

Text textTitle(text) {
  return Text(
    text,
    style: titleTextStyle,
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
  );
}

Text textDescription(text) {
  return Text(
    text,
    style: descriptionTextStyle,
    maxLines: 1,
  );
}

Text textAuthor(text) {
  return Text(
    text,
    style: textAuthorStyle,
    maxLines: 1,
  );
}

Text textDateTime(text) {
  return Text(
    text,
    style: textDateTimeStyle,
    maxLines: 1,
  );
}

Text textContent(text) {
  return Text(
    text,
    style: contentTextStyle,
  );
}

final boxDecorationCard = BoxDecoration(
  color: secondaryColor,
  borderRadius: const BorderRadius.all(
    Radius.circular(20),
  ),
  boxShadow: [
    BoxShadow(
      color: shadowColor,
      spreadRadius: 1,
      blurRadius: 5,
      offset: const Offset(0, 3),
    ),
  ],
);

buttonAnchor(text, onPressed) {
  return Container(
    margin: const EdgeInsets.only(right: 5, top: 10, bottom: 10, left: 5),
    child: TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            side: const BorderSide(color: textLightColor),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Text(
        text,
        style: descriptionTextStyle,
      ),
    ),
  );
}
