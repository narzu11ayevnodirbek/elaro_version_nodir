import 'package:hive/hive.dart';

part 'product_model.g.dart';

@HiveType(typeId: 0)
class ProductModel extends HiveObject {
  @HiveField(0) int id;
  @HiveField(1) String nameUz;
  @HiveField(2) String imageUrl;
  @HiveField(3) double price;

  ProductModel({
    required this.id,
    required this.nameUz,
    required this.imageUrl,
    required this.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      nameUz: json['name_uz'],
      imageUrl: json['images'][0]['image'],
      price: double.tryParse(json['price']) ?? 0.0,
    );
  }
}
