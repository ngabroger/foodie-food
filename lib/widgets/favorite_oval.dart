import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/dark_system.dart';
import 'favorite.dart';

class FavoriteOval extends StatelessWidget {
  final double width;
  final double height;
  const FavoriteOval({
    super.key,
    required this.darkSystem,
    required this.width,
    required this.height,
  });

  final DarkSystem darkSystem;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Obx(() => Container(
            color: darkSystem.isDark.value ? Colors.black87 : Colors.white,
            width: width,
            height: height,
            child: Favorite(),
          )),
    );
  }
}
