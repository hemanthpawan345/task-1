import 'package:assignment/app/views/doctor_details_screen/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget doctorCard() {
  return GestureDetector(
    onTap: () {
      Get.to(() => const DoctorDetailsScreen());
    },
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      width: 350,
      height: 110,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 0.5,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(12),
            width: 85,
            height: 85,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 235, 255, 253),
            ),

            //placeholder for the docter image

            // child: Image.asset('path of doctor image'),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 12, 12, 12),
            padding: const EdgeInsets.all(4),
            width: 180,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Dr. Jason "),
                    SizedBox(height: 5),
                    Text("Specialist"),
                    SizedBox(height: 10),
                    Text("4.7 (87 reviews)"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 16, 12, 0),
            child: GestureDetector(
              child: const Icon(Icons.favorite),
              // change the icon after adding to wishlist
              onTap: () {},
            ),
          ),
        ],
      ),
    ),
  );
}
