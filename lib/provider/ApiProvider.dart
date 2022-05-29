
import 'package:dio/dio.dart';
import 'package:ecommerce/data/sharepref/share.dart';
import 'package:ecommerce/models/Coupons.dart';
import 'package:ecommerce/models/Location.dart';
import 'package:ecommerce/models/TopCategoryModel.dart';
import 'package:ecommerce/models/TopHotModel.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../models/Category.dart';
import '../models/Order.dart';

class ApiProvider {
  final Dio _dio = Dio();

  final String _url = 'https://www.shebanin.com/api/v1/vendor/register';
  final String order_url = 'https://www.shebanin.com/api/v1/order';
  final String category_url = 'https://www.shebanin.com/api/v1/';
  final String coupons_url = 'https://www.shebanin.com/api/v1/coupons';
  final String top_service_url = 'https://www.shebanin.com/api/v1/topCategory-categories';
  final String top_url = 'https://www.shebanin.com/api/v1/service?type=topCategory';
  final String hot_url = 'https://www.shebanin.com/api/v1/service?type=hotCategory';
  String token = "";
  String location = "";


  ApiProvider(){
    init();
  }

  void init() async {
    location=MySharedPreferences.instance
        .getStringValue("location").toString();
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    token = myPrefs.getString("token") ?? "";

  }
  Future<Category> fetchCategoryList() async {
    try {
      Response response = await _dio.get(category_url);
      return Category.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return Category.withError("Data not found / Connection issue");
    }
  }

  Future<TopCategoriesModel> fetchTopCategoryList() async {
    try {
      Response response = await _dio.get(top_service_url);
      return TopCategoriesModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return TopCategoriesModel.withError("Data not found / Connection issue");
    }
  }

  Future<Location> fetchCovidList() async {
    try {
      Response response = await _dio.get(_url);
      return Location.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return Location.withError("Data not found / Connection issue");
    }
  }

  Future<CouponModel> fetchCouponList() async {
    try {
      print("tokem"+token);

      Response response = await _dio.get(coupons_url,
        options: Options(
            headers: {
              'Accept': 'application/json',
              'content-type': 'multipart/form-data',
              'X-Authorization': 'Bearer $token',
            }),);
      return CouponModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("tokem"+token);
      print("Exception occured: $error stackTrace: $stacktrace");
      return CouponModel.withError("Data not found / Connection issue");
    }
  }


  Future<OrderResponse> fetchOrderList() async {

    try {
      print("tokem"+token);

      Response response = await _dio.get(order_url,
          options: Options(
            headers: {
              'Accept': 'application/json',
              'content-type': 'multipart/form-data',
              'X-Authorization': 'Bearer $token',
            }
          ),
      );
      return OrderResponse.fromJson(response.data);

    } catch (error, stacktrace) {
      print("tokem"+token);
      print("Exception occured: $error stackTrace: $stacktrace");
      return OrderResponse.withError("Data not found / Connection issue");
    }
  }

  Future<TopHotModel> fetchTopModelList() async {
    try {
      Response response = await _dio.get(top_url,
        options: Options(
            headers: {
              'Accept': 'application/json',
              'content-type': 'multipart/form-data',
              'X-Authorization': 'Bearer $token',
            }
        ),
      );
      return TopHotModel.fromJson(response.data);

    } catch (error, stacktrace) {
      print("tokem"+token);
      print("Exception occured: $error stackTrace: $stacktrace");
      return TopHotModel.withError("Data not found / Connection issue");
    }
  }

  Future<TopHotModel> fetchHotModelList() async {
    try {
      Response response = await _dio.get(hot_url,
        options: Options(
            headers: {
              'Accept': 'application/json',
              'content-type': 'multipart/form-data',
              'X-Authorization': 'Bearer $token',
            }
        ),
      );
      return TopHotModel.fromJson(response.data);

    } catch (error, stacktrace) {
      print("tokem"+token);
      print("Exception occured: $error stackTrace: $stacktrace");
      return TopHotModel.withError("Data not found / Connection issue");
    }
  }


}