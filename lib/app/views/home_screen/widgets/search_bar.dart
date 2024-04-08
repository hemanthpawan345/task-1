import 'package:flutter/material.dart';

Widget searchBar() {
  return const SizedBox(
    width: 350,
    height: 50,
    child: TextField(
      decoration: InputDecoration(
        hintText: "search",
        suffixIcon: Icon(Icons.search),
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.white,
      ),
    ),
  );
}
