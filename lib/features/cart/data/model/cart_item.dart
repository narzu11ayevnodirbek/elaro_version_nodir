import 'package:hive/hive.dart';

part 'cart_item.g.dart';

@HiveType(typeId: 0)
class CartItem extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String nameUz;

  @HiveField(2)
  String nameCrl;

  @HiveField(3)
  String nameRu;

  @HiveField(4)
  String color;

  @HiveField(5)
  double price;

  @HiveField(6)
  int qty;

  @HiveField(7)
  double discountedPrice;

  @HiveField(8)
  double discount;

  @HiveField(9)
  String? discountType;

  @HiveField(10)
  String? discountStart;

  @HiveField(11)
  String? discountEnd;

  @HiveField(12)
  String descriptionUz;

  @HiveField(13)
  String descriptionCrl;

  @HiveField(14)
  String descriptionRu;

  @HiveField(15)
  int categoryId;

  @HiveField(16)
  int brandId;

  @HiveField(17)
  List<String> images;

  @HiveField(18)
  List<Attribute> attributes;

  CartItem({
    required this.id,
    required this.nameUz,
    required this.nameCrl,
    required this.nameRu,
    required this.color,
    required this.price,
    required this.qty,
    required this.discountedPrice,
    required this.discount,
    this.discountType,
    this.discountStart,
    this.discountEnd,
    required this.descriptionUz,
    required this.descriptionCrl,
    required this.descriptionRu,
    required this.categoryId,
    required this.brandId,
    required this.images,
    required this.attributes,
  });
}

@HiveType(typeId: 1)
class Attribute {
  @HiveField(0)
  int id;

  @HiveField(1)
  String nameUz;

  @HiveField(2)
  String nameCrl;

  @HiveField(3)
  String nameRu;

  @HiveField(4)
  String valueUz;

  @HiveField(5)
  String valueCrl;

  @HiveField(6)
  String valueRu;

  Attribute({
    required this.id,
    required this.nameUz,
    required this.nameCrl,
    required this.nameRu,
    required this.valueUz,
    required this.valueCrl,
    required this.valueRu,
  });
}
