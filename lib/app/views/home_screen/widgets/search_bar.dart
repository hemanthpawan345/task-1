import 'package:flutter/material.dart';

Widget searchBar() {
  return SizedBox(
    width: 350,
    height: 50,
    child: Center(
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    ),
  );
}
