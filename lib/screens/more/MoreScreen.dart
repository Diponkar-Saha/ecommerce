import 'package:ecommerce/screens/more/component/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/coustom_bottom_nav_bar.dart';
import '../../enums.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);
  static String routeName = "/more";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: MoreBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.more),
    );
  }
}
