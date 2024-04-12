import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget appointmentDailog() {
  return Container(
    height: 500,
    width: 312,
    decoration: const BoxDecoration(
      color: Color.fromARGB(255, 236, 239, 239),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 30),
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 222, 251, 255),
            borderRadius: BorderRadius.all(Radius.circular(75)),
            
          ),
          child: const Center(
            child: Icon(
              Icons.file_download_done_sharp,
              size: 60,
              color: Color.fromARGB(255, 66, 206, 255),
            ),
          ),
        ),
        const SizedBox(height: 14),
        const Text(
          "Confirmation",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 14),
        Container(
          width: 280,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2.0,
                blurRadius: 5.0,
              ),
            ],
          ),
          child: const Column(
            children: <Widget>[
              SizedBox(
                width: 260,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Date",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "17 July,2024",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 260,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Time",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "01:30 PM",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 260,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Booking ID",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "#ET57839",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 280,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: 130,
                child: TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.cyan,
                    side: const BorderSide(
                      color: Colors.cyan,
                      width: 1,
                    ),
                  ),
                  child: const Text("CANCEL"),
                ),
              ),
              SizedBox(
                width: 130,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("PAY ADVANCE"),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
