import 'package:flutter/material.dart';

Widget categoryCard() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(3, 6, 10, 12),
    child: Container(
      width: 110,
      height: 130,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0.5,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 222, 251, 255),
              borderRadius: BorderRadius.circular(5.0),
            ),

            //change the icon according to the category
            child: const Icon(
              Icons.health_and_safety_outlined,
              color: Color.fromARGB(255, 72, 208, 224),
              size: 32,
            ),
          ),

          //change the name according to the category
          const Text("Dentist"),

          //change the count according to the category
          const Text("4 Doctors"),
        ],
      ),
    ),
  );
}
