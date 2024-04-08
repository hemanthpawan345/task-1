import 'package:assignment/app/views/doctor_details_screen/widgets/date_card.dart';
import 'package:flutter/material.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 65, 206, 233),
        title: const Text("Doctor Detail"),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 65, 206, 233),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 35),
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 229, 244, 245),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                children: <Widget>[
                  const Center(
                    child: Icon(Icons.linear_scale_sharp),
                  ),
                  Row(
                    children: <Widget>[
                      const Column(
                        children: <Widget>[
                          Text("specialist caralologist"),
                          Text("Diane Ameter"),
                          Row(
                            children: <Widget>[
                              Icon(Icons.location_on_outlined),
                              Text("123 Main Street"),
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 222, 251, 255),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Icon(
                          Icons.favorite_border,
                          color: Color.fromARGB(255, 72, 208, 224),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 350,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Experience'),
                              Text('8 years'),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Patients'),
                              Text('500+'),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Reviews'),
                              Text('4.9'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 350,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("WORKING TIME"),
                        Text("mon - sat,09:30 AM - 05:30 PM"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 350,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text("SCHEDULE"),
                        Row(
                          children: [
                            dateCard(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
