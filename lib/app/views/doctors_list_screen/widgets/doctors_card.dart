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
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),

            //placeholder for the docter image

            // child: Image.asset('path of doctor image'),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 12, 12, 10),
            padding: const EdgeInsets.all(4),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Dr. Jason ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Specialist"),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.yellow),
                        Text(
                          '4.7(323)',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.watch_later_outlined,
                          color: Colors.grey,
                          size: 16,
                        ),
                        Text(
                          '09:00AM - 02:00PM',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
