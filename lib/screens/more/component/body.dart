import 'package:ecommerce/screens/terms_conditionn/TermScreenBody.dart';
import 'package:flutter/cupertino.dart';

import '../../dashboard/DashboardScreen.dart';
import '../../profile/components/profile_menu.dart';
import '../../terms_conditionn/TermsScreen.dart';

class MoreBody extends StatelessWidget {
  const MoreBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfileMenu(
            text: "Dashboard",
            icon: "assets/icons/User Icon.svg",
            press: () => {
              Navigator.pushNamed(context, DashboardScreen.routeName)
            },
          ),
          ProfileMenu(
            text: "Transactionn",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "App Updates",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Terms & Conditions",
            icon: "assets/icons/Question mark.svg",
            press: () {
              Navigator.pushNamed(context,  TermsScreen.routeName,
                arguments: {'exampleArgument': "https://shebanin.com/page/terms-of-service"},);
            },
          ),
          ProfileMenu(
            text: "Privacy Policy",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.pushNamed(context,  TermsScreen.routeName,
                arguments: {'exampleArgument': "https://shebanin.com/page/privacy-policy"},);
            },
          ),
        ],
      ),
    );
  }
}

