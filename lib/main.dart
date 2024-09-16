import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idcamp_last/model/restaurant.dart';

import 'controller/dark_system.dart';
import 'pages/detail_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final DarkSystem darkSystem = Get.put(DarkSystem());
    return Obx(() => MaterialApp(
          title: 'Application Restaurant',
          debugShowCheckedModeBanner: false,
          theme: darkSystem.isDark.value ? ThemeData.dark() : ThemeData.light(),
          home: Homepage(),
          routes: {
            DetailPage.routeName: (context) => DetailPage(
                  d_restaurant:
                      ModalRoute.of(context)?.settings.arguments as Restaurant,
                ),
          },
        ));
  }
}
