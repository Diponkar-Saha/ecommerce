class TopHotModel {
  int? status;
  Body? body;

  String? error;



  TopHotModel.withError(String errorMessage) {
    error = errorMessage;
  }
  TopHotModel({this.status, this.body});

  TopHotModel.fromJson(Map<String, dynamic> json) {
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
  int? currentPage;
  List<Data>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  String? nextPageUrl;
  String? path;
  int? perPage;
  Null? prevPageUrl;
  int? to;
  int? total;

  Body(
      {this.currentPage,
        this.data,
        this.firstPageUrl,
        this.from,
        this.lastPage,
        this.lastPageUrl,
        this.nextPageUrl,
        this.path,
        this.perPage,
        this.prevPageUrl,
        this.to,
        this.total});

  Body.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class Data {
  int? id;
  int? categoryId;
  String? title;
  String? slug;
  String? content;
  List<Images>? images;
  String? views;
  Null? attrs;
  String? unit;
  String? price;
  String? delPrice;
  String? partnerInstantBonus;
  String? partnerPostCommission;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  String? rawText;
  String? excerpt;
  int? discountedPercent;
  List<Null>? options;

  Data(
      {this.id,
        this.categoryId,
        this.title,
        this.slug,
        this.content,
        this.images,
        this.views,
        this.attrs,
        this.unit,
        this.price,
        this.delPrice,
        this.partnerInstantBonus,
        this.partnerPostCommission,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.rawText,
        this.excerpt,
        this.discountedPercent,
        this.options});

  Data.fromJson(Map<String, dynamic> json) {
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
    attrs = json['attrs'];
    unit = json['unit'];
    price = json['price'];
    delPrice = json['del_price'];
    partnerInstantBonus = json['partner_instant_bonus'];
    partnerPostCommission = json['partner_post_commission'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    rawText = json['raw_text'];
    excerpt = json['excerpt'];
    discountedPercent = json['discounted_percent'];

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
    data['attrs'] = this.attrs;
    data['unit'] = this.unit;
    data['price'] = this.price;
    data['del_price'] = this.delPrice;
    data['partner_instant_bonus'] = this.partnerInstantBonus;
    data['partner_post_commission'] = this.partnerPostCommission;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['raw_text'] = this.rawText;
    data['excerpt'] = this.excerpt;
    data['discounted_percent'] = this.discountedPercent;

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