import 'package:flutter/material.dart';

Widget appname() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const <Widget>[
      Text(
        'Sketch',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w300,
        ),
      ),
      Text(
        'ART',
        style: TextStyle(
            color: Colors.blue, fontSize: 40, fontWeight: FontWeight.w300),
      ),
    ],
  );
}
