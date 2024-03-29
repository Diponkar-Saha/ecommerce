import 'package:http/http.dart' as http;

import '../models/carousel.dart';

class RemoteService {
  static var client = http.Client();

  static Future<dynamic> fetchCarouselData() async {
    try{
      var response = await client.get(
        Uri.parse('https://my-grocery-strapi.herokuapp.com/home-carousels'),
      );
      if(response.statusCode == 200){
        return carouselFromJson(response.body);
      }
      return ;
    } catch(e){
      return ;
    }
  }
}