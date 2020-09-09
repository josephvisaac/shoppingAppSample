import 'package:meta/meta.dart';

class ProductModel {
  final String id;
  final String title;
  final String description;
  final double price;
  final String urlImage;
  bool isFavorite;
  ProductModel({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.urlImage,
    this.isFavorite = false, //sets isFavorite to false by default
  });
}
