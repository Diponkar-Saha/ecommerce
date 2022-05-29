import 'package:ecommerce/models/Category.dart';
import 'package:ecommerce/models/Coupons.dart';
import 'package:ecommerce/models/Location.dart';
import 'package:ecommerce/models/Order.dart';
import 'package:ecommerce/models/TopHotModel.dart';

import '../models/TopCategoryModel.dart';
import '../provider/ApiProvider.dart';


class ApiRepository {
  final _provider = ApiProvider();

  Future<Location> fetchCovidList() {
    return _provider.fetchCovidList();
  }

  Future<OrderResponse> fetchOrderList() {
    return _provider.fetchOrderList();
  }

  Future<Category> fetchCategoryList() {
    return _provider.fetchCategoryList();
  }

  Future<CouponModel> fetchCouponList() {
    return _provider.fetchCouponList();
  }

  Future<TopCategoriesModel> fetchTopCategoryList() {
    return _provider.fetchTopCategoryList();
  }

  Future<TopHotModel> fetchTopModelList() {
    return _provider.fetchTopModelList();
  }

  Future<TopHotModel> fetchHotModelList() {
    return _provider.fetchHotModelList();
  }
}

class NetworkError extends Error {}