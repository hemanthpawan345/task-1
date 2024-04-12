import 'package:assignment/app/views/home_screen/widgets/category_card.dart';
import 'package:assignment/app/views/home_screen/widgets/doctor_card.dart';
import 'package:assignment/app/views/home_screen/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../doctor_details_screen/view.dart';
import '../doctors_list_screen/view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        title: const Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        leading: const Icon(Icons.menu),
        centerTitle: true,
        actions: [
          // for profile pic view
          Container(
            margin: const EdgeInsets.only(right: 16),
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 209, 243, 249),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            // child: (),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                searchBar(),
                const SizedBox(height: 20),
                Container(
                  width: 350,
                  height: 160,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 66, 206, 223),
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2.0,
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                            child: Text(
                              "BRAIN SURGEON",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                            child: Text(
                              "Dr. Ursula Gurnmeister",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(12, 6, 0, 0),
                            child: Text(
                              "Health Hospital",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 10, 0, 0),
                            child: TextButton(
                              onPressed: () {
                                Get.to(() => const DoctorDetailsScreen());
                              },
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 64, 178, 191),
                              ),
                              child: const Text(
                                "GET APPOINTMENT",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      //place holder for the image of the doctor
                      Container(
                        margin: const EdgeInsets.fromLTRB(60, 15, 0, 0),
                        height: 145,
                        width: 110,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 209, 243, 249),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        // child:Image.asset("path of doctor image")
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "CATEGORIES",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,

                  //Use according to the number of categories
                  child: Row(
                    children: <Widget>[
                      categoryCard(),
                      categoryCard(),
                      categoryCard(),
                      categoryCard(),
                      categoryCard(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "POPULAR DOCTORS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => const DoctorsListScreen());
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                doctorCard(),
                doctorCard(),
                doctorCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
