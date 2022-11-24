
import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.color,
  });
}

String description ="sdsdsadsa";

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 138,
      description: description,
      image: "http://clipart-library.com/image_gallery2/Women-Bag-Transparent.png",
      color: Colors.brown),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 245,
      description: description,
      image: "http://clipart-library.com/images_k/bag-transparent-background/bag-transparent-background-12.png",
      color: Colors.grey),
  Product(
      id: 3,
      title: "Hang Top",
      price: 343,
      description: description,
      image: "http://clipart-library.com/images_k/bag-transparent-background/bag-transparent-background-10.png",
      color: Colors.blueAccent),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 343,
      description: description,
      image: "http://clipart-library.com/images_k/bag-transparent-background/bag-transparent-background-1.png",
      color: Colors.black12),
  Product(
      id: 5,
      title: "Office Code",
      price: 232,
      description: description,
      image: "http://clipart-library.com/images_k/bag-transparent-background/bag-transparent-background-6.png",
      color: Colors.blueGrey),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    description: description,
    image: "http://clipart-library.com/images_k/bag-transparent-background/bag-transparent-background-10.png",
    color: Colors.cyan,
  ),
];