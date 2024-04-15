import 'package:flutter/foundation.dart';

class Product {
  @required
  String id;
  @required
  String title;
  @required
  String description;
  @required
  double price;
  @required
  String imageUrl;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });
}

