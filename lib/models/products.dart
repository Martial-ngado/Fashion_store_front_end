import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
        required this.title,
        required this.description,
        required this.price,
        required this.size,
        required this.id,
        required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Jordan 1 blue Low",
      price: 18000,
      size: 42,
      description: 'Nike Air Jordan court Couleur bleu',
      image: "assets/images/jordan_1.png",
      color: Colors.blue.shade800,),
  Product(
      id: 2,
      title: "Jordan 1 Maron Low ",
      price: 20000,
      size: 8,
      description: 'Jordan 1 Low Color Brown',
      image: "assets/images/jordan_2.png",
      color: Colors.brown.shade300),
  Product(
      id: 3,
      title: "Nike Uptempo 23",
      price: 30000,
      size: 10,
      description: dummyText,
      image: "assets/images/uptempo.png",
      color:  Colors.black12 ),
  Product(
      id: 4,
      title: "Nike Air Max",
      price: 25000,
      size: 11,
      description: dummyText,
      image: "assets/images/air_max.png",
      color:  Colors.grey.shade300),
  Product(
      id: 5,
      title: "Alexender McQueen",
      price: 21000,
      size: 12,
      description: dummyText,
      image: "assets/images/mcqueen.png",
      color: Colors.white70),
  Product(
    id: 6,
    title: "Air force 1 & Supreme",
    price: 15000,
    size: 12,
    description: dummyText,
    image: "assets/images/air_force.png",
    color: Colors.red.shade300,
  ),

  //outfits products
  Product(
    id: 7,
    title: "Adidas summer wear",
    price: 18000,
    size: 42,
    description: 'Adidas summer wear',
    image: "assets/images/brown.png",
    color: Colors.blue.shade800,),
  Product(
      id: 8,
      title: "Coq Sportif Vintage",
      price: 20000,
      size: 8,
      description: 'Coq Sportif',
      image: "assets/images/fr.png",
      color: Colors.brown.shade300),
  Product(
      id: 9,
      title: "Adidas Winter",
      price: 30000,
      size: 10,
      description: dummyText,
      image: "assets/images/add.png",
      color:  Colors.black12 ),
  Product(
      id: 10,
      title: "Crop Top",
      price: 25000,
      size: 11,
      description: dummyText,
      image: "assets/images/add.png",
      color:  Colors.grey.shade300),
  Product(
      id: 11,
      title: "Crop Top show",
      price: 21000,
      size: 12,
      description: dummyText,
      image: "assets/images/fr.png",
      color: Colors.white70),
  Product(
    id: 12,
    title: "Nice wear",
    price: 15000,
    size: 12,
    description: dummyText,
    image: "assets/images/img_5.png",
    color: Colors.red.shade300,
  ),


];

String dummyText =
    "Trouvez le meilleur de vos sneaker dans cette boutique, tout nos produits sont authentique et directement sorti des usines Nike";