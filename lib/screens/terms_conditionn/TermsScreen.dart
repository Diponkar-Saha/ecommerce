import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TermScreenBody.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({Key? key}) : super(key: key);
  static String routeName = "/terms";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Terms & Condition")
      ),
      body: TermsScreenBody(),
    );
  }
}