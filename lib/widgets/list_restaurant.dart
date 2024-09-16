import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idcamp_last/controller/dark_system.dart';
import 'package:idcamp_last/model/restaurant.dart';

import 'favorite.dart';
import 'favorite_oval.dart';

class ListRestaurant extends StatelessWidget {
  final Restaurant restaurant;
  const ListRestaurant({
    super.key,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    final DarkSystem darkSystem = Get.find<DarkSystem>();
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/detail-page', arguments: restaurant);
        },
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                      padding: EdgeInsets.all(12),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(restaurant.image,
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.cover))),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: FavoriteOval(
                        darkSystem: darkSystem, width: 40, height: 40),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          restaurant.name,
                          style: GoogleFonts.urbanist(
                              fontWeight: FontWeight.w800, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.yellow[700],
                            ),
                            const SizedBox(width: 5),
                            Text(
                              restaurant.rating,
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w800, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(restaurant.type,
                        style: GoogleFonts.urbanist(
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                            color: Colors.green[600])),
                    const SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined, size: 15),
                          const SizedBox(width: 5),
                          Text(
                            restaurant.address,
                            style: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w800, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
