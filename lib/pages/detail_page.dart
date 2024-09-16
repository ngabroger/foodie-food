import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idcamp_last/widgets/favorite.dart';

import '../model/restaurant.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail-page';
  final Restaurant d_restaurant;
  const DetailPage({Key? key, required this.d_restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Restaurant Information",
          style: GoogleFonts.urbanist(fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                d_restaurant.image,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 12,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  d_restaurant.name,
                                  style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 22,
                                  ),
                                ),
                                Favorite()
                              ],
                            ),
                            Text(
                              d_restaurant.type,
                              style: GoogleFonts.urbanist(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Colors.green[400]),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined),
                                const SizedBox(width: 10),
                                Text(d_restaurant.address),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[700],
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  d_restaurant.rating.toString(),
                                  style: GoogleFonts.urbanist(
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              d_restaurant.description,
                              style: GoogleFonts.urbanist(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 12,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.access_time),
                            Text(d_restaurant.times,
                                style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.price_change_outlined),
                            Text(d_restaurant.price,
                                style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
