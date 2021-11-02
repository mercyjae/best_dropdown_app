import 'dart:ui';

class ChairModel {
  final String name;
  final String description;
  final int price;
  final String image;
  final String size;
  final String percent;



  ChairModel(
      {required this.name, required this.description, required this.price, required this.image, required this.size,
         required this.percent
      });
}

  List<ChairModel> chair =[
    ChairModel(
      name: " Wing Chair",
      description: "My Lovely Chair",
      price: 24,
      image: "assets/images/chairs 1.png",
      size: "10cm",
      percent:"20%",
    ),
    ChairModel(
      name: " Arm Chair",
      description: "My Lovely Chair",
      price: 40,
      image: "assets/images/chairs 2.png",
      size: "37cm",
      percent:"20%",
    ),
    ChairModel(
      name: "Folding Chair",
      description: "My Lovely Chair",
      price: 30,
      image: "assets/images/chairs 3.png",
      size: "56cm",
      percent:"20%",
    ),
    ChairModel(
      name: " LadderBack Chair",
      description: "My Lovely Chair",
      price: 50,
      image: "assets/images/chairs 4.png",
      size: "56cm",
      percent:"20%",
    ),
    ChairModel(
      name: " Desk Chair",
      description: "My Lovely Chair",
      price: 45,
      image: "assets/images/chair 5.png",
      size: "38cm",
      percent:"20%",
    ),
    ChairModel(
      name: "Wheel Chair",
      description: "My Lovely Chair",
      price: 20,
      image: "assets/images/chair 6.png",
      size: "54cm",
      percent:"20%",
    )
  ];