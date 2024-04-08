import 'package:assignment/app/views/home_screen/widgets/category_card.dart';
import 'package:assignment/app/views/home_screen/widgets/doctor_card.dart';
import 'package:assignment/app/views/home_screen/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../doctor_details_screen/view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        title: const Text('Home'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
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
                            child: Text("BRAIN SURGEON"),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                            child: Text("Dr. Ursula Gurnmeister"),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(12, 6, 0, 0),
                            child: Text("Health Hospital"),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 10, 0, 0),
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => const DoctorDetailsScreen());
                              },
                              child: const Text("GET APPOINTMENT"),
                            ),
                          ),
                        ],
                      ),

                      //place holder for the image of the doctor
                      Container(
                        margin: const EdgeInsets.fromLTRB(45, 15, 0, 0),
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
                const SizedBox(height: 10),
                const Text("CATEGORIES"),
                const SizedBox(height: 16),
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
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text("POPULAR DOCTORS"),
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container();
                          },
                        );
                      },
                      child: const Text("see all"),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                doctorCard(),
                doctorCard(),
                doctorCard(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 65, 206, 223),
        currentIndex: 0,
        unselectedItemColor: const Color.fromARGB(255, 150, 158, 157),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_sharp),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "",
          ),
        ],
      ),
    );
  }
}
