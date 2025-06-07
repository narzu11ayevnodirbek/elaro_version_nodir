class ProductsModel {
    List<Datum> data;
    Links links;
    Meta meta;

    ProductsModel({
        required this.data,
        required this.links,
        required this.meta,
    });

    ProductsModel copyWith({
        List<Datum>? data,
        Links? links,
        Meta? meta,
    }) => 
        ProductsModel(
            data: data ?? this.data,
            links: links ?? this.links,
            meta: meta ?? this.meta,
        );
}

class Datum {
    int id;
    String nameUz;
    String nameCrl;
    String nameRu;
    String color;
    String price;
    int qty;
    int discountedPrice;
    String discount;
    String? discountType;
    String? discountStart;
    String? discountEnd;
    String descriptionUz;
    String descriptionCrl;
    String descriptionRu;
    int categoryId;
    int brandId;
    List<Image> images;
    List<Attribute> attributes;

    Datum({
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

    Datum copyWith({
        int? id,
        String? nameUz,
        String? nameCrl,
        String? nameRu,
        String? color,
        String? price,
        int? qty,
        int? discountedPrice,
        String? discount,
        String? discountType,
        String? discountStart,
        String? discountEnd,
        String? descriptionUz,
        String? descriptionCrl,
        String? descriptionRu,
        int? categoryId,
        int? brandId,
        List<Image>? images,
        List<Attribute>? attributes,
    }) => 
        Datum(
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
    }) => 
        Attribute(
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

    Image({
        required this.id,
        required this.image,
    });

    Image copyWith({
        int? id,
        String? image,
    }) => 
        Image(
            id: id ?? this.id,
            image: image ?? this.image,
        );
}

class Links {
    String first;
    String last;
    dynamic prev;
    dynamic next;

    Links({
        required this.first,
        required this.last,
        required this.prev,
        required this.next,
    });

    Links copyWith({
        String? first,
        String? last,
        dynamic prev,
        dynamic next,
    }) => 
        Links(
            first: first ?? this.first,
            last: last ?? this.last,
            prev: prev ?? this.prev,
            next: next ?? this.next,
        );
}

class Meta {
    int currentPage;
    int from;
    int lastPage;
    List<Link> links;
    String path;
    int perPage;
    int to;
    int total;

    Meta({
        required this.currentPage,
        required this.from,
        required this.lastPage,
        required this.links,
        required this.path,
        required this.perPage,
        required this.to,
        required this.total,
    });

    Meta copyWith({
        int? currentPage,
        int? from,
        int? lastPage,
        List<Link>? links,
        String? path,
        int? perPage,
        int? to,
        int? total,
    }) => 
        Meta(
            currentPage: currentPage ?? this.currentPage,
            from: from ?? this.from,
            lastPage: lastPage ?? this.lastPage,
            links: links ?? this.links,
            path: path ?? this.path,
            perPage: perPage ?? this.perPage,
            to: to ?? this.to,
            total: total ?? this.total,
        );
}

class Link {
    String? url;
    String label;
    bool active;

    Link({
        required this.url,
        required this.label,
        required this.active,
    });

    Link copyWith({
        String? url,
        String? label,
        bool? active,
    }) => 
        Link(
            url: url ?? this.url,
            label: label ?? this.label,
            active: active ?? this.active,
        );
}
