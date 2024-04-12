import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view.dart';
import '../../treatment_screen/view.dart';

class HomeController extends GetxController {
  int selectedScreen = 0;
  int navbarIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const Scaffold(body: Center(child: Text("Calender Screen"))),
    const TreatmentScreen(),
    const Scaffold(body: Center(child: Text("Profile Screen"))),
  ];
  void changeScreen(int index) {
    selectedScreen = index;
    navbarIndex = index;
    update();
  }
}
