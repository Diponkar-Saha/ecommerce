import 'package:flutter/material.dart';
import '../../../blocs/location/LocationBloc.dart';
import '../../../blocs/location/LocationEvent.dart';
import '../../../blocs/location/LocationState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/sharepref/share.dart';
import '../../../models/Location.dart';
import '../../home/home_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final LocationBloc _newsBloc = LocationBloc();

  @override
  void initState() {
    _newsBloc.add(GetLocationList());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _buildListCovid(

      ),
    );
  }

  Widget _buildListCovid() {
    return Container(
      margin: EdgeInsets.all(8.0),
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
                return _buildCard(context, state.location);
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

  Widget _buildCard(BuildContext context, Location model) {
    return ListView.builder(
      itemCount: model.body!.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            title: Text("${model.body![index].name}"),
            onTap: () async {
              print("location "+model.body![index].id.toString());
              MySharedPreferences.instance
                  .setStringValue("location","${model.body![index].id}");
              Navigator.pushNamed(context, HomeScreen.routeName);

            },


          ),
        );
      },
    );
  }

  Widget _buildLoading() => Center(child: CircularProgressIndicator());
}

