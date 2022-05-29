import 'package:ecommerce/models/Order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/Order/OrderBloc.dart';
import '../../../blocs/Order/OrderEvent.dart';
import '../../../blocs/Order/OrderState.dart';

class OrderBody extends StatefulWidget {
  const OrderBody({Key? key}) : super(key: key);

  @override
  _OrderBodyState createState() => _OrderBodyState();
}

class _OrderBodyState extends State<OrderBody> {
  final OrderBloc _newsBloc = OrderBloc();
  var totalSum =0;
  @override
  void initState() {
    _newsBloc.add(GetOrderList());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return _buildListOrder(

      //body: _buildListOrder(),
    );
  }


  Widget _buildListOrder() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      //margin: EdgeInsets.all(8.0),
      child: BlocProvider(
        create: (_) => _newsBloc,
        child: BlocListener<OrderBloc, OrderState>(
          listener: (context, state) {
            if (state is OrderError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message!),
                ),
              );
            }
          },
          child: BlocBuilder<OrderBloc, OrderState>(
            builder: (context, state) {
              if (state is OrderInitial) {
                return _buildLoading();
              } else if (state is OrderLoading) {
                return _buildLoading();
              } else if (state is OrderLoaded) {
                return _buildCard(context, state.orderResponse);
              } else if (state is OrderError) {
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

  Widget _buildCard(BuildContext context, OrderResponse model) {
    return ListView.builder(
      itemCount: model.body?.data!.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              // for(var i in model.body?.data![index].orders.li?.forEach((element) {
              //   var t=element.total;
              // }))



             Text("Date : ${model.body?.data![index].createdAt}"),
             Text("Order : #${model.body?.data![index].trackNumber}"),


             Text("Total :  ${model.body?.data![index].trackNumber}"),

            ],


          ),
        );
      },
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
}

