import 'package:animation_search_bar/animation_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idcamp_last/pages/detail_page.dart';
import 'package:idcamp_last/widgets/favorite.dart';
import 'package:idcamp_last/widgets/favorite_oval.dart';

import '../controller/dark_system.dart';
import '../model/restaurant.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController searchTextEditingController;
  List<Restaurant> orignalRestaurantList = [];
  List<Restaurant> searchResult = [];

  @override
  void initState() {
    super.initState();
    orignalRestaurantList = List.from(listRestaurant);

    searchTextEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final DarkSystem darkSystem = Get.find<DarkSystem>();
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Obx(() => AnimationSearchBar(
              isBackButtonVisible: false,
              centerTitle: "Search",
              centerTitleStyle: GoogleFonts.urbanist(
                  fontWeight: FontWeight.bold, fontSize: 20),
              searchIconColor:
                  darkSystem.isDark.value ? Colors.white : Colors.black,
              closeIconColor:
                  darkSystem.isDark.value ? Colors.white : Colors.black,
              searchFieldDecoration: BoxDecoration(
                color: darkSystem.isDark.value ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              hintStyle: GoogleFonts.urbanist(
                  fontWeight: FontWeight.bold, fontSize: 15),
              onChanged: (text) {
                text = text.toLowerCase();
                setState(() {
                  searchResult = orignalRestaurantList.where((restaurant) {
                    var restaurantName = restaurant.name.toLowerCase();
                    return restaurantName.contains(text);
                  }).toList();
                });
              },
              searchTextEditingController: searchTextEditingController)),
        ),
        Container(
          height: double.maxFinite,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: searchResult.isNotEmpty
                ? searchResult.length
                : orignalRestaurantList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, DetailPage.routeName,
                      arguments: searchResult.isNotEmpty
                          ? searchResult[index]
                          : orignalRestaurantList[index]);
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              Container(
                                width: 180,
                                height: 120,
                                child: Image.asset(
                                  searchResult.isNotEmpty
                                      ? searchResult[index].image
                                      : orignalRestaurantList[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                  top: 10,
                                  right: 10,
                                  child: FavoriteOval(
                                      darkSystem: darkSystem,
                                      width: 40,
                                      height: 40))
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                searchResult.isNotEmpty
                                    ? searchResult[index].name
                                    : orignalRestaurantList[index].name,
                                style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                searchResult.isNotEmpty
                                    ? searchResult[index].type
                                    : orignalRestaurantList[index].type,
                                style: GoogleFonts.urbanist(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.green[400]),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow[700],
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    searchResult.isNotEmpty
                                        ? searchResult[index].rating
                                        : orignalRestaurantList[index].rating,
                                    style: GoogleFonts.urbanist(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.location_on_outlined),
                                  Text(
                                    searchResult.isNotEmpty
                                        ? searchResult[index].address
                                        : orignalRestaurantList[index].address,
                                    style: GoogleFonts.urbanist(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
