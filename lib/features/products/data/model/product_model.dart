class ProductModel {
  Data data;

  ProductModel({required this.data});

  ProductModel copyWith({Data? data}) => ProductModel(data: data ?? this.data);
}

class Data {
  int id;
  String nameUz;
  String nameCrl;
  String nameRu;
  String color;
  String price;
  int qty;
  int discountedPrice;
  String discount;
  dynamic discountType;
  dynamic discountStart;
  dynamic discountEnd;
  String descriptionUz;
  String descriptionCrl;
  String descriptionRu;
  int categoryId;
  int brandId;
  List<Image> images;
  List<Attribute> attributes;

  Data({
    required this.id,
    required this.nameUz,
    required this.nameCrl,
    required this.nameRu,
    required this.color,
    required this.price,
    required this.qty,
    required this.discountedPrice,
    required this.discount,
    required this.discountType,
    required this.discountStart,
    required this.discountEnd,
    required this.descriptionUz,
    required this.descriptionCrl,
    required this.descriptionRu,
    required this.categoryId,
    required this.brandId,
    required this.images,
    required this.attributes,
  });

  Data copyWith({
    int? id,
    String? nameUz,
    String? nameCrl,
    String? nameRu,
    String? color,
    String? price,
    int? qty,
    int? discountedPrice,
    String? discount,
    dynamic discountType,
    dynamic discountStart,
    dynamic discountEnd,
    String? descriptionUz,
    String? descriptionCrl,
    String? descriptionRu,
    int? categoryId,
    int? brandId,
    List<Image>? images,
    List<Attribute>? attributes,
  }) => Data(
    id: id ?? this.id,
    nameUz: nameUz ?? this.nameUz,
    nameCrl: nameCrl ?? this.nameCrl,
    nameRu: nameRu ?? this.nameRu,
    color: color ?? this.color,
    price: price ?? this.price,
    qty: qty ?? this.qty,
    discountedPrice: discountedPrice ?? this.discountedPrice,
    discount: discount ?? this.discount,
    discountType: discountType ?? this.discountType,
    discountStart: discountStart ?? this.discountStart,
    discountEnd: discountEnd ?? this.discountEnd,
    descriptionUz: descriptionUz ?? this.descriptionUz,
    descriptionCrl: descriptionCrl ?? this.descriptionCrl,
    descriptionRu: descriptionRu ?? this.descriptionRu,
    categoryId: categoryId ?? this.categoryId,
    brandId: brandId ?? this.brandId,
    images: images ?? this.images,
    attributes: attributes ?? this.attributes,
  );
}

class Attribute {
  int id;
  String nameUz;
  String nameCrl;
  String nameRu;
  String valueUz;
  String valueCrl;
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

  Attribute copyWith({
    int? id,
    String? nameUz,
    String? nameCrl,
    String? nameRu,
    String? valueUz,
    String? valueCrl,
    String? valueRu,
  }) => Attribute(
    id: id ?? this.id,
    nameUz: nameUz ?? this.nameUz,
    nameCrl: nameCrl ?? this.nameCrl,
    nameRu: nameRu ?? this.nameRu,
    valueUz: valueUz ?? this.valueUz,
    valueCrl: valueCrl ?? this.valueCrl,
    valueRu: valueRu ?? this.valueRu,
  );
}

class Image {
  int id;
  String image;

  Image({required this.id, required this.image});

  Image copyWith({int? id, String? image}) =>
      Image(id: id ?? this.id, image: image ?? this.image);
}
