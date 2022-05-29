import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:lottie/lottie.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);
  static String routeName = "/help";



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          Lottie.asset('assets/json/support.json'),
          Text("Thank You For Using Sheanin."),
          Container(
            height: 20.0,
          ),
          Text("Customer Care:"),
          Container(
            height: 20.0,
          ),
          Text("+8801707254455",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),),
          Container(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: _callNumber,
            child: Text('Call'),
          ),

        ],
      ),




    );
  }
}
_callNumber() async{
  const number = '+8801707254455'; //set the number here
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
}

