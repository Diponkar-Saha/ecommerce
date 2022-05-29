import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/models/TopHotModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../blocs/topService/TopServiceEvent.dart';
import '../../../blocs/topService/TopServiceState.dart';
import '../../../blocs/category/CategoryState.dart';
import '../../../blocs/topService/TopServiceBloc.dart';
import '../../../size_config.dart';

class TopService extends StatefulWidget {
  const TopService({Key? key}) : super(key: key);

  @override
  _TopServiceState createState() => _TopServiceState();
}

class _TopServiceState extends State<TopService> {
  @override
  final TopServiceBloc _topServiceBloc = TopServiceBloc();

  @override
  void initState() {
    _topServiceBloc.add(GetTopServiceList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _topServiceBloc,
      child: BlocListener<TopServiceBloc, TopServiceState>(
        listener: (context, state) {
          if (state is TopServiceError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message!),
              ),
            );
          }
        },
        child: BlocBuilder<TopServiceBloc, TopServiceState>(
          builder: (context, state) {
            if (state is TopServiceInitial) {
              return _buildLoading();
            } else if (state is TopServiceLoading) {
              return _buildLoading();
            } else if (state is TopServiceLoaded) {
              print(state.topHotModel);
              return _buildCard(context, state.topHotModel);

            } else if (state is TopServiceError) {
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
          shrinkWrap:true,
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
                      imageUrl: "${model.body?.data![index].images?.single?.thumb}",
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