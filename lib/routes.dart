import 'package:ecommerce/screens/cart/cart_screen.dart';
import 'package:ecommerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce/screens/coupons/CouponScreen.dart';
import 'package:ecommerce/screens/dashboard/DashboardScreen.dart';
import 'package:ecommerce/screens/details/details_screen.dart';
import 'package:ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce/screens/help/Help.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/location/login_success_screen.dart';
import 'package:ecommerce/screens/more/MoreScreen.dart';
import 'package:ecommerce/screens/order/Order.dart';
import 'package:ecommerce/screens/otp/otp_screen.dart';
import 'package:ecommerce/screens/otplogin/LoginOtp.dart';
import 'package:ecommerce/screens/profile/profile_screen.dart';
import 'package:ecommerce/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce/screens/splash/splash_screen.dart';
import 'package:ecommerce/screens/terms_conditionn/TermsScreen.dart';
import 'package:flutter/widgets.dart';



import 'screens/sign_up/sign_up_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  MoreScreen.routeName: (context) => MoreScreen(),
  HelpScreen.routeName: (context) => HelpScreen(),
  OrderScreen.routeName: (context) => OrderScreen(),
  DashboardScreen.routeName: (context) => DashboardScreen(),
  TermsScreen.routeName: (context) => TermsScreen(),
  LoginOtpScreen.routeName: (context) => LoginOtpScreen(),
  CouponScreen.routeName: (context) => CouponScreen(),
};
