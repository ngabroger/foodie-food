import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:switcher_button/switcher_button.dart';

import '../controller/dark_system.dart';

class SettingPage extends StatelessWidget {
  final darkSystem = Get.find<DarkSystem>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Setting ",
              style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w700, fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Dark Mode",
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w700, fontSize: 20),
                ),
                Spacer(),
                Obx(() => SwitcherButton(
                      value: darkSystem.isDark.value,
                      onChange: (value) {
                        darkSystem.changeTheme();
                      },
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
