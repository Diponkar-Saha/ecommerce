import 'Category.dart';

class SuperDeal {
  int? status;
  Body? body;

  SuperDeal({this.status, this.body});

  SuperDeal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    body = json['body'] != null ? new Body.fromJson(json['body']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.body != null) {
      data['body'] = this.body!.toJson();
    }
    return data;
  }
}

class Body {
  List<Categories>? categories;
  List<TopCategories>? topCategories;

  Body({this.categories, this.topCategories});

  Body.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    if (json['topCategories'] != null) {
      topCategories = <TopCategories>[];
      json['topCategories'].forEach((v) {
        topCategories!.add(new TopCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    if (this.topCategories != null) {
      data['topCategories'] =
          this.topCategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  int? id;
  String? name;
  String? offerText;
  Null? description;
  String? slug;
  String? parentId;
  int? sort;
  String? cashBack;
  String? cashBackType;
  String? cashBackAdjust;
  String? cashBackAdjustType;
  Image? image;
  String? createdAt;
  String? updatedAt;
  int? serviceCount;
  List<Children>? children;

  Categories(
      {this.id,
        this.name,
        this.offerText,
        this.description,
        this.slug,
        this.parentId,
        this.sort,
        this.cashBack,
        this.cashBackType,
        this.cashBackAdjust,
        this.cashBackAdjustType,
        this.image,
        this.createdAt,
        this.updatedAt,
        this.serviceCount,
        this.children});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    offerText = json['offer_text'];
    description = json['description'];
    slug = json['slug'];
    parentId = json['parent_id'];
    sort = json['sort'];
    cashBack = json['cash_back'];
    cashBackType = json['cash_back_type'];
    cashBackAdjust = json['cash_back_adjust'];
    cashBackAdjustType = json['cash_back_adjust_type'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    serviceCount = json['service_count'];
    if (json['children'] != null) {
      children = <Children>[];
      json['children'].forEach((v) {
        children!.add(new Children.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['offer_text'] = this.offerText;
    data['description'] = this.description;
    data['slug'] = this.slug;
    data['parent_id'] = this.parentId;
    data['sort'] = this.sort;
    data['cash_back'] = this.cashBack;
    data['cash_back_type'] = this.cashBackType;
    data['cash_back_adjust'] = this.cashBackAdjust;
    data['cash_back_adjust_type'] = this.cashBackAdjustType;
    if (this.image != null) {
      data['image'] = this.image!.toJson();
    }
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['service_count'] = this.serviceCount;
    if (this.children != null) {
      data['children'] = this.children!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Image {
  String? thumb;
  String? url;

  Image({this.thumb, this.url});

  Image.fromJson(Map<String, dynamic> json) {
    thumb = json['thumb'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumb'] = this.thumb;
    data['url'] = this.url;
    return data;
  }
}

class Children {
  int? id;
  String? name;
  Null? offerText;
  String? description;
  String? slug;
  String? parentId;
  int? sort;
  String? cashBack;
  String? cashBackType;
  String? cashBackAdjust;
  String? cashBackAdjustType;
  Image? image;
  String? createdAt;
  String? updatedAt;
  int? serviceCount;

  Children(
      {this.id,
        this.name,
        this.offerText,
        this.description,
        this.slug,
        this.parentId,
        this.sort,
        this.cashBack,
        this.cashBackType,
        this.cashBackAdjust,
        this.cashBackAdjustType,
        this.image,
        this.createdAt,
        this.updatedAt,
        this.serviceCount});

  Children.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    offerText = json['offer_text'];
    description = json['description'];
    slug = json['slug'];
    parentId = json['parent_id'];
    sort = json['sort'];
    cashBack = json['cash_back'];
    cashBackType = json['cash_back_type'];
    cashBackAdjust = json['cash_back_adjust'];
    cashBackAdjustType = json['cash_back_adjust_type'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    serviceCount = json['service_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['offer_text'] = this.offerText;
    data['description'] = this.description;
    data['slug'] = this.slug;
    data['parent_id'] = this.parentId;
    data['sort'] = this.sort;
    data['cash_back'] = this.cashBack;
    data['cash_back_type'] = this.cashBackType;
    data['cash_back_adjust'] = this.cashBackAdjust;
    data['cash_back_adjust_type'] = this.cashBackAdjustType;
    if (this.image != null) {
      data['image'] = this.image!.toJson();
    }
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['service_count'] = this.serviceCount;
    return data;
  }
}