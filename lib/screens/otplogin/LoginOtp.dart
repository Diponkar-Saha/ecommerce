import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../size_config.dart';
import '../sign_in/sign_in_screen.dart';

class LoginOtpScreen extends StatelessWidget {
  const LoginOtpScreen({Key? key}) : super(key: key);
  static String routeName = "/login_otp";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Padding(padding:
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(

            children: [

              Spacer(),
              Image.asset('assets/images/logo.png',
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width/3,),
              Spacer(),
              Text('Enter Your Mobile Number.',
                textAlign: TextAlign.start,style: TextStyle(fontSize: 20),),
              SizedBox(height: 15),
              Container(
                height: 40,
                alignment: Alignment.center,

                child: TextField(

                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.center,
                  maxLines: 1,
                  style: TextStyle(fontSize: 17),
                  decoration: InputDecoration(

                    filled: true,
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(),
                    labelText: 'Mobile Number',
                    hintText: '01700000000',
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.black12,),
                  ),

                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Send Otp'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('..............',style: TextStyle(fontSize: 20),),
                  Text('or',style: TextStyle(fontSize: 20),),
                  Text('..............',style: TextStyle(fontSize: 20),),
                ],

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/img.png',
                    height: MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/10,),
                  SizedBox(width: 5),

                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                    child: Text('Login',style: TextStyle(fontSize: 20),
                    ),
                  ),

                ],
              ),
              Spacer(),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
