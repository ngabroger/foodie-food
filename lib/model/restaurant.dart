class Restaurant {
  final String name;
  final String address;
  final String description;
  final String image;
  final String rating;
  final String type;
  final String times;
  final String price;

  Restaurant({
    required this.name,
    required this.address,
    required this.description,
    required this.image,
    required this.rating,
    required this.type,
    required this.times,
    required this.price,
  });
}

var listRestaurant = [
  Restaurant(
    name: "Sushi Corner",
    address: "Tokyo Street 22, Japan",
    description: "Fresh and authentic sushi experience.",
    image: "assets/images/sushi.jpg",
    rating: "4.8 (200 reviews)",
    type: "Japanese Food",
    times: "11:00 - 23:00",
    price: "¥800 - ¥5000",
  ),
  Restaurant(
    name: "La Bella Italia",
    address: "Rome 101, Italy",
    description: "Traditional Italian cuisine with a modern twist.",
    image: "assets/images/italian.jpeg",
    rating: "4.7 (150 reviews)",
    type: "Italian Food",
    times: "10:00 - 22:00",
    price: "€10 - €60",
  ),
  Restaurant(
    name: "Taco Fiesta",
    address: "Houston Ave 34, USA",
    description: "Delicious and spicy Mexican tacos.",
    image: "assets/images/tacos.jpeg",
    rating: "4.6 (95 reviews)",
    type: "Mexican Food",
    times: "09:00 - 20:00",
    price: "€5 - €25",
  ),
  Restaurant(
    name: "Café Parisien",
    address: "Paris Blvd 12, France",
    description: "Charming café with authentic French pastries.",
    image: "assets/images/cafe_paris.jpg",
    rating: "4.9 (180 reviews)",
    type: "French Café",
    times: "07:00 - 19:00",
    price: "€5 - €30",
  ),
  Restaurant(
    name: "Mumbai Spice",
    address: "Mumbai Lane 45, India",
    description: "Spicy and flavorful Indian dishes.",
    image: "assets/images/indian.jpg",
    rating: "4.4 (130 reviews)",
    type: "Indian Food",
    times: "10:00 - 22:00",
    price: "₹150 - ₹1000",
  ),
  Restaurant(
    name: "Korean BBQ House",
    address: "Seoul 17, South Korea",
    description: "Authentic Korean BBQ experience.",
    image: "assets/images/korean_bbg.jpg",
    rating: "4.7 (140 reviews)",
    type: "Korean Food",
    times: "12:00 - 23:00",
    price: "₩10000 - ₩50000",
  ),
  Restaurant(
    name: "Brazilian Grill",
    address: "Rio de Janeiro 5, Brazil",
    description: "Famous for its grilled meats and vibrant atmosphere.",
    image: "assets/images/brazilian.jpg",
    rating: "4.6 (110 reviews)",
    type: "Brazilian Food",
    times: "11:00 - 22:00",
    price: "R30 - R150",
  ),
  Restaurant(
    name: "Mediterranean Delights",
    address: "Athens 9, Greece",
    description: "Delicious Mediterranean dishes with fresh ingredients.",
    image: "assets/images/mediterranean.jpg",
    rating: "4.8 (125 reviews)",
    type: "Mediterranean Food",
    times: "10:00 - 21:00",
    price: "€15 - €70",
  ),
  Restaurant(
    name: "American Diner",
    address: "New York 3, USA",
    description: "Classic American diner with a wide range of comfort food.",
    image: "assets/images/diner.jpeg",
    rating: "4.5 (160 reviews)",
    type: "American Food",
    times: "08:00 - 22:00",
    price: "฿100  - ฿800",
  ),
  Restaurant(
    name: "Thai Paradise",
    address: "Bangkok 50, Thailand",
    description: "Authentic Thai cuisine with a variety of spicy dishes.",
    image: "assets/images/thai.jpg",
    rating: "4.7 (140 reviews)",
    type: "Thai Food",
    times: "10:00 - 23:00",
    price: "฿100 - ฿800",
  ),
];
