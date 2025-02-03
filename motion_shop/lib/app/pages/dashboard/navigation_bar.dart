import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_shop/app/pages/dashboard/controller/navigation_controller.dart';
import 'package:motion_shop/app/pages/dashboard/favorite/favorite_page.dart';
import 'package:motion_shop/app/pages/dashboard/home/home_page.dart';
import 'package:motion_shop/app/pages/dashboard/profile/profile_page.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController bottomNavController =
        Get.put(NavigationController());

    return Obx(() => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          centerTitle: true,
          leading: const Padding(
            padding: EdgeInsets.only(left: 23),
            child: Icon(Icons.menu),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Get.toNamed('/cart');
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 23),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            )
          ],
          title: Image.asset(
            "assets/images/logo_app.png",
            width: 47,
            height: 47,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: IndexedStack(
          index: bottomNavController.selectedIndex.value,
          children: const [
            HomePage(),
            FavoritePage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashColor: Colors.transparent, // Menghilangkan efek splash
            highlightColor: Colors.transparent, // Menghilangkan efek highlight
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xff00623B),
            elevation: 0,
            currentIndex: bottomNavController.selectedIndex.value,
            onTap: (index) => bottomNavController.changeIndex(index),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white60,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 30), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border, size: 30),
                  label: "Favorites"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined, size: 30),
                  label: "Profile"),
            ],
          ),
        )));
  }
}
