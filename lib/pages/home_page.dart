import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idcamp_last/controller/dark_system.dart';
import 'package:idcamp_last/pages/search_page.dart';

import 'content_page.dart';
import 'setting_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _page = 0;
  final List<Widget> _pages = [
    const HomeContent(),
    SearchPage(), // Halaman utama
    SettingPage(),
    // Halaman pengaturan
  ];
  @override
  Widget build(BuildContext context) {
    final DarkSystem darkSystem = Get.put(DarkSystem());
    return Scaffold(
      bottomNavigationBar: Obx(() => CurvedNavigationBar(
            color: darkSystem.isDark.value ? Colors.black : Colors.white,
            backgroundColor: Colors.blueAccent,
            items: [
              CurvedNavigationBarItem(
                child: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home',
              ),
              CurvedNavigationBarItem(
                child: Icon(Icons.search),
                label: 'Search',
              ),
              CurvedNavigationBarItem(
                child: Icon(Icons.settings),
                label: 'Setting',
              ),
            ],
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
          )),
      body: SafeArea(
          child: IndexedStack(
        index: _page,
        children: _pages,
      )),
    );
  }
}
