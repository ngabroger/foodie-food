import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/restaurant.dart';
import '../widgets/list_restaurant.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on_outlined),
                  const SizedBox(width: 10),
                  Text(
                    'Jl. Raya Bogor, No. 12',
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w800, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Text(
            'Special Offer',
            style: GoogleFonts.urbanist(
                fontWeight: FontWeight.w800,
                fontSize: 25,
                color: Colors.pink[900]),
          ),
        ),
        const SizedBox(height: 2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 7,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/promotion.png'),
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          child: Text(
            'List Restaurant',
            style: GoogleFonts.urbanist(
                fontWeight: FontWeight.w800,
                fontSize: 25,
                color: Colors.pink[900]),
          ),
        ),
        const SizedBox(height: 15),
        Container(
          height: double.maxFinite,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final Restaurant restaurant = listRestaurant[index];
              if (restaurant.name == null || restaurant.image == null) {
                return Text('Missing data');
              }
              return ListRestaurant(restaurant: restaurant);
            },
            itemCount: listRestaurant.length,
          ),
        )
      ],
    );
  }
}
