import 'package:ecommerce/screens/home/components/hot_service.dart';
import 'package:ecommerce/screens/home/components/special_offers.dart';
import 'package:flutter/material.dart';

import '../../../models/Category.dart';
import '../../../size_config.dart';
import 'Category.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'top_service.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(

        child: Column(
          children: [


            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            MyHomePage(),
            SizedBox(height: getProportionateScreenWidth(10)),
            CategoryScreen(),
            SizedBox(height: getProportionateScreenWidth(10)),
            TopService(),
            SizedBox(height: getProportionateScreenWidth(10)),
            HotService()
            // Container(
            //   color: Colors.redAccent, // Yellow
            //   height: 600.0,
            // ),

          ],
        ),

      ),
    );
  }
}

//
// class HomeBody1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//
//           child: Column(
//             children: [
//
//
//               SizedBox(height: getProportionateScreenHeight(20)),
//               HomeHeader(),
//               SizedBox(height: getProportionateScreenWidth(10)),
//               MyHomePage(),
//               SizedBox(height: getProportionateScreenWidth(10)),
//
//               //Categories(),
//                //SpecialOffers(),
//               PopularProducts(),
//               // PopularProducts(),
//               // PopularProducts(),
//               CategoryScreen(),
//               // SizedBox(height: getProportionateScreenWidth(30)),
//             ],
//           ),
//
//       ),
//     );
//   }
// }
