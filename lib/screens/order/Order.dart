import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/OrderBody.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);
  static String routeName = "/order";

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
      title: Text("Order"),
      ),
        body: OrderBody(),
      );
    }
  }
