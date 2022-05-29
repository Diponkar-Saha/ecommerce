

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../blocs/location/LocationBloc.dart';
import '../../blocs/location/LocationEvent.dart';
import '../../blocs/location/LocationState.dart';
import '../../components/coustom_bottom_nav_bar.dart';
import '../../enums.dart';
import '../../models/Location.dart';
import '../cart/cart_screen.dart';

import 'components/body.dart';
import 'components/drawer.dart';
import 'components/icon_btn_with_counter.dart';



class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  // Initial Selected Value
 

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(),
              Spacer(),
              Dropdown(),
              Spacer(),
              IconBtnWithCounter(
                svgSrc: "assets/icons/Cart Icon.svg",
                press: () => Navigator.pushNamed(context, CartScreen.routeName),
              ),

              Spacer(),
              IconBtnWithCounter(

                svgSrc: "assets/icons/Bell.svg",
                numOfitem: 3,
                press: () {},
              ),
            ],

          ),
        ),
        centerTitle: true,

      ),
      drawer: DrawerScreen(),
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  final LocationBloc _newsBloc = LocationBloc();
  String dropdownvalue = 'Item 1';

  @override
  void initState() {
    _newsBloc.add(GetLocationList());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocProvider(
        create: (_) => _newsBloc,
        child: BlocListener<LocationBloc, LocationState>(
          listener: (context, state) {
            if (state is LocationError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message!),
                ),
              );
            }
          },
          child: BlocBuilder<LocationBloc, LocationState>(
            builder: (context, state) {
              if (state is LocationInitial) {
                return _buildLoading();
              } else if (state is LocationLoading) {
                return _buildLoading();
              } else if (state is LocationLoaded) {
                return _buildDrawer(context, state.location.body );
              } else if (state is LocationError) {
                return Container();
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
      
    );
  }
  Widget _buildDrawer(BuildContext context,  List<Body>? model){
    return 
    DropdownButton(
        hint: Text('Choose Location'),
        icon: const Icon(Icons.keyboard_arrow_down),
      items:model?.map((Body lang) {
        return new DropdownMenuItem<String>(
          value: lang.id.toString(),
          child: new Text(lang.name.toString()),
        );
      }).toList(), onChanged: (String? value) {

          },
    );

      // itemCount: model.body!.length,
      // itemBuilder: (context, index) {
        // return Card(
        //   margin: EdgeInsets.all(8.0),
        //   child: ListTile(
        //     title: Text("${model.body![index].name}"),
        //     onTap: () async {
        //       // MySharedPreferences.instance
        //       //     .setStringValue("location","${model.body![index].id}");
        //       // Navigator.pushNamed(context, HomeScreen.routeName);
        //
        //     },
        //
        //
        //   ),
        // );
      // }, onChanged: (value) {  }, items: [],
   // );
  }
  Widget _buildLoading() => Center(child: CircularProgressIndicator());
}
