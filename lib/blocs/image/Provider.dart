import 'package:flutter/material.dart';
import 'imagebloc.dart';
export 'imagebloc.dart';

class Provider extends InheritedWidget{
  final bloc = ImageBloc();

  Provider({required Key key, required Widget child}) :super(key:key,child:child);

  bool updateShouldNotify(_) => true;

  static ImageBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider).bloc;
  }
}