class CouponModel {
  int? status;
  List<Body>? body;
  String? error;

  CouponModel({this.status, this.body});
  CouponModel.withError(String errorMessage) {
    error = errorMessage;
  }
  CouponModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    body = <Body>[];
      json['body'].forEach((v) {
        body!.add(Body.fromJson(v));
      });

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (body != null) {
      data['body'] = body!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Body {
  int? id;
  String? code;
  String? startAt;
  String? expireAt;
  String? min;
  String? maximumUseLimit;
  String? upto;
  int? discountType;
  String? amount;
  String? createdAt;
  String? updatedAt;
  String? discountTaka;
  Pivot? pivot;
  List<Services>? services;

  Body(
      {
        this.id,
        this.code,
        this.startAt,
        this.expireAt,
        this.min,
        this.maximumUseLimit,
        this.upto,
        this.discountType,
        this.amount,
        this.createdAt,
        this.updatedAt,
        this.discountTaka,
        this.pivot,
        this.services});

  Body.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    startAt = json['start_at'];
    expireAt = json['expire_at'];
    min = json['min'];
    maximumUseLimit = json['maximum_use_limit'];
    upto = json['upto'];
    discountType = json['discount_type'];
    amount = json['amount'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    discountTaka = json['discount_taka'].toString();
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(new Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['start_at'] = this.startAt;
    data['expire_at'] = this.expireAt;
    data['min'] = this.min;
    data['maximum_use_limit'] = this.maximumUseLimit;
    data['upto'] = this.upto;
    data['discount_type'] = this.discountType;
    data['amount'] = this.amount;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['discount_taka'] = this.discountTaka;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    if (this.services != null) {
      data['services'] = this.services!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pivot {
  int? userId;
  int? couponId;

  Pivot({this.userId, this.couponId});

  Pivot.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    couponId = json['coupon_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['coupon_id'] = this.couponId;
    return data;
  }
}

class Services {
  int? id;
  int? categoryId;
  String? title;
  String? slug;
  String? content;
  List<Images>? images;
  String? views;
  //void? attrs;
  String? unit;
  String? price;
  String? delPrice;
  String? partnerInstantBonus;
  String? partnerPostCommission;
  String? createdAt;
  String? updatedAt;
 // Null? deletedAt;
  String? rawText;
  String? excerpt;
  int? discountedPercent;
  Pivot? pivot;

  Services(
      {this.id,
        this.categoryId,
        this.title,
        this.slug,
        this.content,
        this.images,
        this.views,
        //this.attrs,
        this.unit,
        this.price,
        this.delPrice,
        this.partnerInstantBonus,
        this.partnerPostCommission,
        this.createdAt,
        this.updatedAt,
       // this.deletedAt,
        this.rawText,
        this.excerpt,
        this.discountedPercent,
        this.pivot});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    title = json['title'];
    slug = json['slug'];
    content = json['content'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
    views = json['views'];
    //attrs = json['attrs'];
    unit = json['unit'];
    price = json['price'];
    delPrice = json['del_price'];
    partnerInstantBonus = json['partner_instant_bonus'];
    partnerPostCommission = json['partner_post_commission'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    //deletedAt = json['deleted_at'];
    rawText = json['raw_text'];
    excerpt = json['excerpt'];
    discountedPercent = json['discounted_percent'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['content'] = this.content;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    data['views'] = this.views;
    //data['attrs'] = this.attrs;
    data['unit'] = this.unit;
    data['price'] = this.price;
    data['del_price'] = this.delPrice;
    data['partner_instant_bonus'] = this.partnerInstantBonus;
    data['partner_post_commission'] = this.partnerPostCommission;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    //data['deleted_at'] = this.deletedAt;
    data['raw_text'] = this.rawText;
    data['excerpt'] = this.excerpt;
    data['discounted_percent'] = this.discountedPercent;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    return data;
  }
}

class Images {
  String? thumb;
  String? url;

  Images({this.thumb, this.url});

  Images.fromJson(Map<String, dynamic> json) {
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

