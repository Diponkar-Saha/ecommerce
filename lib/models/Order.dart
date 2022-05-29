class OrderResponse {
  int? status;
  Body? body;
  String? error;

  OrderResponse({this.status, this.body});

  OrderResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    body = json['body'] != null ? new Body.fromJson(json['body']) : null;
  }
  OrderResponse.withError(String errorMessage) {
    error = errorMessage;
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
  Null? nextPageUrl;
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
  String? trackNumber;
  int? couponId;
  String? discount;
  int? userId;
  Null? area;
  Null? address;
  Null? extraDesc;
  int? paymentMethod;
  String? createdAt;
  String? updatedAt;
  int? systemEarnings;
  List<Orders>? orders;
  Coupon? coupon;

  Data(
      {this.id,
        this.trackNumber,
        this.couponId,
        this.discount,
        this.userId,
        this.area,
        this.address,
        this.extraDesc,
        this.paymentMethod,
        this.createdAt,
        this.updatedAt,
        this.systemEarnings,
        this.orders,
        this.coupon});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    trackNumber = json['track_number'];
    couponId = json['coupon_id'];
    discount = json['discount'];
    userId = json['user_id'];
    area = json['area'];
    address = json['address'];
    extraDesc = json['extra_desc'];
    paymentMethod = json['payment_method'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    systemEarnings = json['system_earnings'];
    if (json['orders'] != null) {
      orders = <Orders>[];
      json['orders'].forEach((v) {
        orders!.add(new Orders.fromJson(v));
      });
    }
    coupon =
    json['coupon'] != null ? new Coupon.fromJson(json['coupon']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['track_number'] = this.trackNumber;
    data['coupon_id'] = this.couponId;
    data['discount'] = this.discount;
    data['user_id'] = this.userId;
    data['area'] = this.area;
    data['address'] = this.address;
    data['extra_desc'] = this.extraDesc;
    data['payment_method'] = this.paymentMethod;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['system_earnings'] = this.systemEarnings;
    if (this.orders != null) {
      data['orders'] = this.orders!.map((v) => v.toJson()).toList();
    }
    if (this.coupon != null) {
      data['coupon'] = this.coupon!.toJson();
    }
    return data;
  }
}

class Orders {
  int? id;
  int? orderGroupId;
  Null? preOrderId;
  Null? partnerId;
  Null? vendorId;
  int? serviceId;
  int? quantity;
  String? unitPrice;
  Null? desc;
  Null? note;
  Null? extraDesc;
  String? extraCost;
  String? paymentStatus;
  String? status;
  int? isInhouse;
  Null? assignRemarks;
  Null? cancelRemarks;
  String? createdAt;
  String? updatedAt;
  List<Null>? meta;
  int? totalPrice;
  String? serviceName;
  User? user;
  Null? vendorName;
  String? createdAtFormatted;
  String? track;
  int? total;
  int? vendorAmount;
  Service? service;
  Group? group;
  Null? vendor;

  Orders(
      {this.id,
        this.orderGroupId,
        this.preOrderId,
        this.partnerId,
        this.vendorId,
        this.serviceId,
        this.quantity,
        this.unitPrice,
        this.desc,
        this.note,
        this.extraDesc,
        this.extraCost,
        this.paymentStatus,
        this.status,
        this.isInhouse,
        this.assignRemarks,
        this.cancelRemarks,
        this.createdAt,
        this.updatedAt,
        this.meta,
        this.totalPrice,
        this.serviceName,
        this.user,
        this.vendorName,
        this.createdAtFormatted,
        this.track,
        this.total,
        this.vendorAmount,
        this.service,
        this.group,
        this.vendor});

  Orders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderGroupId = json['order_group_id'];
    preOrderId = json['pre_order_id'];
    partnerId = json['partner_id'];
    vendorId = json['vendor_id'];
    serviceId = json['service_id'];
    quantity = json['quantity'];
    unitPrice = json['unit_price'];
    desc = json['desc'];
    note = json['note'];
    extraDesc = json['extra_desc'];
    extraCost = json['extra_cost'];
    paymentStatus = json['payment_status'];
    status = json['status'];
    isInhouse = json['is_inhouse'];
    assignRemarks = json['assign_remarks'];
    cancelRemarks = json['cancel_remarks'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    // meta = json['meta'];

    totalPrice = json['total_price'];
    serviceName = json['service_name'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    vendorName = json['vendor_name'];
    createdAtFormatted = json['created_at_formatted'];
    track = json['track'];
    total = json['total'];
    vendorAmount = json['vendor_amount'];
    service =
    json['service'] != null ? new Service.fromJson(json['service']) : null;
    group = json['group'] != null ? new Group.fromJson(json['group']) : null;
    vendor = json['vendor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['order_group_id'] = this.orderGroupId;
    data['pre_order_id'] = this.preOrderId;
    data['partner_id'] = this.partnerId;
    data['vendor_id'] = this.vendorId;
    data['service_id'] = this.serviceId;
    data['quantity'] = this.quantity;
    data['unit_price'] = this.unitPrice;
    data['desc'] = this.desc;
    data['note'] = this.note;
    data['extra_desc'] = this.extraDesc;
    data['extra_cost'] = this.extraCost;
    data['payment_status'] = this.paymentStatus;
    data['status'] = this.status;
    data['is_inhouse'] = this.isInhouse;
    data['assign_remarks'] = this.assignRemarks;
    data['cancel_remarks'] = this.cancelRemarks;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    //data['meta'] = this.meta;

    data['total_price'] = this.totalPrice;
    data['service_name'] = this.serviceName;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['vendor_name'] = this.vendorName;
    data['created_at_formatted'] = this.createdAtFormatted;
    data['track'] = this.track;
    data['total'] = this.total;
    data['vendor_amount'] = this.vendorAmount;
    if (this.service != null) {
      data['service'] = this.service!.toJson();
    }
    if (this.group != null) {
      data['group'] = this.group!.toJson();
    }
    data['vendor'] = this.vendor;
    return data;
  }
}

class User {
  int? id;
  String? name;
  Null? avatar;
  String? email;
  String? phone;
  String? address;
  String? balance;
  Null? parentId;
  Null? emailVerifiedAt;
  String? phoneVerifiedAt;
  int? status;
  String? deviceCode;
  String? referralCode;
  Null? referenceBy;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;
  String? createdAtFormatted;

  User(
      {this.id,
        this.name,
        this.avatar,
        this.email,
        this.phone,
        this.address,
        this.balance,
        this.parentId,
        this.emailVerifiedAt,
        this.phoneVerifiedAt,
        this.status,
        this.deviceCode,
        this.referralCode,
        this.referenceBy,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.createdAtFormatted});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    avatar = json['avatar'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    balance = json['balance'];
    parentId = json['parent_id'];
    emailVerifiedAt = json['email_verified_at'];
    phoneVerifiedAt = json['phone_verified_at'];
    status = json['status'];
    deviceCode = json['device_code'];
    referralCode = json['referral_code'];
    referenceBy = json['reference_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    createdAtFormatted = json['created_at_formatted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['avatar'] = this.avatar;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['balance'] = this.balance;
    data['parent_id'] = this.parentId;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['phone_verified_at'] = this.phoneVerifiedAt;
    data['status'] = this.status;
    data['device_code'] = this.deviceCode;
    data['referral_code'] = this.referralCode;
    data['reference_by'] = this.referenceBy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['created_at_formatted'] = this.createdAtFormatted;
    return data;
  }
}

class Service {
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
  String? deletedAt;
  String? rawText;
  String? excerpt;
  int? discountedPercent;

  Service(
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
        this.discountedPercent});

  Service.fromJson(Map<String, dynamic> json) {
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

class Group {
  int? id;
  String? trackNumber;
  int? couponId;
  String? discount;
  int? userId;
  Null? area;
  Null? address;
  Null? extraDesc;
  int? paymentMethod;
  String? createdAt;
  String? updatedAt;
  int? systemEarnings;
  User? user;

  Group(
      {this.id,
        this.trackNumber,
        this.couponId,
        this.discount,
        this.userId,
        this.area,
        this.address,
        this.extraDesc,
        this.paymentMethod,
        this.createdAt,
        this.updatedAt,
        this.systemEarnings,
        this.user});

  Group.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    trackNumber = json['track_number'];
    couponId = json['coupon_id'];
    discount = json['discount'];
    userId = json['user_id'];
    area = json['area'];
    address = json['address'];
    extraDesc = json['extra_desc'];
    paymentMethod = json['payment_method'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    systemEarnings = json['system_earnings'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['track_number'] = this.trackNumber;
    data['coupon_id'] = this.couponId;
    data['discount'] = this.discount;
    data['user_id'] = this.userId;
    data['area'] = this.area;
    data['address'] = this.address;
    data['extra_desc'] = this.extraDesc;
    data['payment_method'] = this.paymentMethod;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['system_earnings'] = this.systemEarnings;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class Coupon {
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
  int? discountTaka;

  Coupon(
      {this.id,
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
        this.discountTaka});

  Coupon.fromJson(Map<String, dynamic> json) {
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
    discountTaka = json['discount_taka'];
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
    return data;
  }
}