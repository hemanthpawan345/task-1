import 'package:assignment/app/views/home_screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (homeController) {
        return Scaffold(
          body: homeController.screens[homeController.selectedScreen],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              homeController.changeScreen(value);
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color.fromARGB(255, 65, 206, 223),
            currentIndex: homeController.navbarIndex,
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
      },
    );
  }
}
