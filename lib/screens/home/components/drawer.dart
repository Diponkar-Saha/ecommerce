
import 'package:ecommerce/screens/coupons/CouponScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import '../../order/Order.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);


  @override
  _DrawerScreennState createState() => _DrawerScreennState();
}

class _DrawerScreennState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Expanded(

        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Diponkar Saha"),
              accountEmail: Text("disaha2833@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Coupon"),
              onTap: () {
                Navigator.pushNamed(context, CouponScreen.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings), title: Text("Super Deal"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts), title: Text("Order"),
              onTap: () {
                Navigator.pushNamed(context, OrderScreen.routeName);
              },
            ),
            ListTile(
              leading: Icon(Icons.money), title: Text("Refer & Earn Money"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.request_page), title: Text("Request a Service"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.location_history), title: Text("Save Address"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.support), title: Text("Support"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star_rate), title: Text("Rate the App"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.share), title: Text("Share the app"),
              onTap: () {
                Share.share('check out my website https://example.com');

              },
            ),
            ListTile(
              leading: Icon(Icons.rule_sharp), title: Text("Terms & Conditions"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout), title: Text("Logout"),
              onTap: () {
                AlertDialog alert = AlertDialog(
                  title: Text("Logout"),
                  content:  Text("Do you Really want to logout?"),
                    actions: [
                      ElevatedButton(
                        child: Text("Cancel"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      ElevatedButton(
                        child: Text("Logout"),
                        onPressed: () {
                          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                        },)

                    ],

                    //],
                 // ),
                );
                showDialog(
                context: context,
                builder: (BuildContext context) {
                return alert;
                },
                );

              },
            ),


          ],
        ),
      ),
    );

  }


}
// _showDialog(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return
//
//     },
//   );
// }

