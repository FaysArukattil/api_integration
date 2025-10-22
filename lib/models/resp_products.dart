// ignore_for_file: no_leading_underscores_for_local_identifiers

class RespProducts {
  List<Products>? products;
  int? total;
  int? skip;
  int? limit;

  RespProducts({this.products, this.total, this.skip, this.limit});

  RespProducts.fromJson(Map<String, dynamic> json) {
    if (json["products"] is List) {
      products = json["products"] == null
          ? null
          : (json["products"] as List)
                .map((e) => Products.fromJson(e))
                .toList();
    }
    if (json["total"] is int) {
      total = json["total"];
    }
    if (json["skip"] is int) {
      skip = json["skip"];
    }
    if (json["limit"] is int) {
      limit = json["limit"];
    }
  }

  static List<RespProducts> fromList(List<Map<String, dynamic>> list) {
    return list.map(RespProducts.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (products != null) {
      _data["products"] = products?.map((e) => e.toJson()).toList();
    }
    _data["total"] = total;
    _data["skip"] = skip;
    _data["limit"] = limit;
    return _data;
  }
}

class Products {
  int? id;
  String? title;
  String? description;
  String? category;
  double? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  List<String>? tags;
  String? brand;
  String? sku;
  int? weight;
  Dimensions? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  List<Reviews>? reviews;
  String? returnPolicy;
  int? minimumOrderQuantity;
  Meta? meta;
  List<String>? images;
  String? thumbnail;

  Products({
    this.id,
    this.title,
    this.description,
    this.category,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.tags,
    this.brand,
    this.sku,
    this.weight,
    this.dimensions,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    this.reviews,
    this.returnPolicy,
    this.minimumOrderQuantity,
    this.meta,
    this.images,
    this.thumbnail,
  });

  Products.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["category"] is String) {
      category = json["category"];
    }
    if (json["price"] is double) {
      price = json["price"];
    }
    if (json["discountPercentage"] is double) {
      discountPercentage = json["discountPercentage"];
    }
    if (json["rating"] is double) {
      rating = json["rating"];
    }
    if (json["stock"] is int) {
      stock = json["stock"];
    }
    if (json["tags"] is List) {
      tags = json["tags"] == null ? null : List<String>.from(json["tags"]);
    }
    if (json["brand"] is String) {
      brand = json["brand"];
    }
    if (json["sku"] is String) {
      sku = json["sku"];
    }
    if (json["weight"] is int) {
      weight = json["weight"];
    }
    if (json["dimensions"] is Map) {
      dimensions = json["dimensions"] == null
          ? null
          : Dimensions.fromJson(json["dimensions"]);
    }
    if (json["warrantyInformation"] is String) {
      warrantyInformation = json["warrantyInformation"];
    }
    if (json["shippingInformation"] is String) {
      shippingInformation = json["shippingInformation"];
    }
    if (json["availabilityStatus"] is String) {
      availabilityStatus = json["availabilityStatus"];
    }
    if (json["reviews"] is List) {
      reviews = json["reviews"] == null
          ? null
          : (json["reviews"] as List).map((e) => Reviews.fromJson(e)).toList();
    }
    if (json["returnPolicy"] is String) {
      returnPolicy = json["returnPolicy"];
    }
    if (json["minimumOrderQuantity"] is int) {
      minimumOrderQuantity = json["minimumOrderQuantity"];
    }
    if (json["meta"] is Map) {
      meta = json["meta"] == null ? null : Meta.fromJson(json["meta"]);
    }
    if (json["images"] is List) {
      images = json["images"] == null
          ? null
          : List<String>.from(json["images"]);
    }
    if (json["thumbnail"] is String) {
      thumbnail = json["thumbnail"];
    }
  }

  static List<Products> fromList(List<Map<String, dynamic>> list) {
    return list.map(Products.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["description"] = description;
    _data["category"] = category;
    _data["price"] = price;
    _data["discountPercentage"] = discountPercentage;
    _data["rating"] = rating;
    _data["stock"] = stock;
    if (tags != null) {
      _data["tags"] = tags;
    }
    _data["brand"] = brand;
    _data["sku"] = sku;
    _data["weight"] = weight;
    if (dimensions != null) {
      _data["dimensions"] = dimensions?.toJson();
    }
    _data["warrantyInformation"] = warrantyInformation;
    _data["shippingInformation"] = shippingInformation;
    _data["availabilityStatus"] = availabilityStatus;
    if (reviews != null) {
      _data["reviews"] = reviews?.map((e) => e.toJson()).toList();
    }
    _data["returnPolicy"] = returnPolicy;
    _data["minimumOrderQuantity"] = minimumOrderQuantity;
    if (meta != null) {
      _data["meta"] = meta?.toJson();
    }
    if (images != null) {
      _data["images"] = images;
    }
    _data["thumbnail"] = thumbnail;
    return _data;
  }
}

class Meta {
  String? createdAt;
  String? updatedAt;
  String? barcode;
  String? qrCode;

  Meta({this.createdAt, this.updatedAt, this.barcode, this.qrCode});

  Meta.fromJson(Map<String, dynamic> json) {
    if (json["createdAt"] is String) {
      createdAt = json["createdAt"];
    }
    if (json["updatedAt"] is String) {
      updatedAt = json["updatedAt"];
    }
    if (json["barcode"] is String) {
      barcode = json["barcode"];
    }
    if (json["qrCode"] is String) {
      qrCode = json["qrCode"];
    }
  }

  static List<Meta> fromList(List<Map<String, dynamic>> list) {
    return list.map(Meta.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["barcode"] = barcode;
    _data["qrCode"] = qrCode;
    return _data;
  }
}

class Reviews {
  int? rating;
  String? comment;
  String? date;
  String? reviewerName;
  String? reviewerEmail;

  Reviews({
    this.rating,
    this.comment,
    this.date,
    this.reviewerName,
    this.reviewerEmail,
  });

  Reviews.fromJson(Map<String, dynamic> json) {
    if (json["rating"] is int) {
      rating = json["rating"];
    }
    if (json["comment"] is String) {
      comment = json["comment"];
    }
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["reviewerName"] is String) {
      reviewerName = json["reviewerName"];
    }
    if (json["reviewerEmail"] is String) {
      reviewerEmail = json["reviewerEmail"];
    }
  }

  static List<Reviews> fromList(List<Map<String, dynamic>> list) {
    return list.map(Reviews.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["rating"] = rating;
    _data["comment"] = comment;
    _data["date"] = date;
    _data["reviewerName"] = reviewerName;
    _data["reviewerEmail"] = reviewerEmail;
    return _data;
  }
}

class Dimensions {
  double? width;
  double? height;
  double? depth;

  Dimensions({this.width, this.height, this.depth});

  Dimensions.fromJson(Map<String, dynamic> json) {
    if (json["width"] is double) {
      width = json["width"];
    }
    if (json["height"] is double) {
      height = json["height"];
    }
    if (json["depth"] is double) {
      depth = json["depth"];
    }
  }

  static List<Dimensions> fromList(List<Map<String, dynamic>> list) {
    return list.map(Dimensions.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["height"] = height;
    _data["depth"] = depth;
    return _data;
  }
}
