import 'package:flutter/material.dart';

Widget dateCard() {
  return Container(
    width: 40,
    height: 65,
    decoration: const BoxDecoration(
      color: Color.fromARGB(255, 229, 244, 245),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    ),
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          "Mon",
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          "17",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
