import 'dart:async';

import 'package:ecommerce/screens/otp/otp_screen.dart';
import 'package:flutter/material.dart';


// This is the best practice
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../otplogin/LoginOtp.dart';
import '../../sign_in/sign_in_screen.dart';
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>
                Navigator.pushNamed(context, LoginOtpScreen.routeName)
        //         Navigator.push(context,
        //     MaterialPageRoute(builder:
        //         (context) => SignInScreen()
        //     )
        // )
    );
  }//'assets/images/logo_shebanin.png'
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,

        child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                SizedBox(height: 50,),
                Image.asset('assets/images/logo.png',
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width/3,
                  alignment: Alignment.center,),
                SizedBox(
                  height: 150,
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.blue[100],
                ),
                SizedBox(height: 10,),
                Text("Powerd By",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 10.0,

                      color: Colors.black
                  ),),
                Text("SHEBANIN PLATFROM LTD.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent
                  ),)
              ],
            ),

          ),
        )
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
