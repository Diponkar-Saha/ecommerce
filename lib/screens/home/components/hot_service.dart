import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/hotService/HotServiceBloc.dart';
import '../../../blocs/hotService/HotServiceEvent.dart';
import '../../../blocs/hotService/HotServiceState.dart';
import '../../../models/TopHotModel.dart';
import '../../../size_config.dart';

class HotService extends StatefulWidget {
  const HotService({Key? key}) : super(key: key);

  @override
  _HotServiceState createState() => _HotServiceState();
}

class _HotServiceState extends State<HotService> {

  @override
  final HotServiceBloc _hotServiceBloc = HotServiceBloc();

  @override
  void initState() {
    _hotServiceBloc.add(GetHotServiceList());
    super.initState();
  }
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _hotServiceBloc,
      child: BlocListener<HotServiceBloc, HotServiceState>(
        listener: (context, state) {
          if (state is HotServiceError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message!),
              ),
            );
          }
        },
        child: BlocBuilder<HotServiceBloc, HotServiceState>(
          builder: (context, state) {
            if (state is HotServiceInitial) {
              return _buildLoading();
            } else if (state is HotServiceLoading) {
              return _buildLoading();
            } else if (state is HotServiceLoaded) {

              return _buildCard(context, state.hotHotModel);

            } else if (state is HotServiceError) {
              return Container();
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
  Widget _buildCard(BuildContext context, TopHotModel model) {
    return Container(
      height: 150,
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),

      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          //shrinkWrap:true,
          physics: ClampingScrollPhysics(),

          itemCount: model.body?.data?.length,
          itemBuilder: (context, index) {
            return Container(
              height: 150,
              width: 150,
              child: Card(

                child: Column(
                  children: [
                    //List<Categories>?'
                    CachedNetworkImage(
                      height: 100,
                      width: 100,
                      imageUrl: "${model.body?.data![index].images?.single.thumb}",
                      placeholder: (context, url) => CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    Text("${model.body?.data![index].title}",
                      style: TextStyle(fontSize: 9),),


                  ],
                ),
              ),
            );
          }),

    );
  }

  Widget _buildLoading() => Center(child: CircularProgressIndicator());
}
