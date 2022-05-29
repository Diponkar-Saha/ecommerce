import 'package:ecommerce/models/Coupons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/coupon/CouponBloc.dart';
import '../../blocs/coupon/CouponEvent.dart';
import '../../blocs/coupon/CouponState.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({Key? key}) : super(key: key);
  static String routeName = "/coupon";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coupon"),
      ),
      body: CouponBody(),
    );
  }
}

class CouponBody extends StatefulWidget {
  const CouponBody({Key? key}) : super(key: key);

  @override
  _CouponBodyState createState() => _CouponBodyState();
}

class _CouponBodyState extends State<CouponBody> {
  final CouponBloc _newsBloc = CouponBloc();

  @override
  void initState() {
    _newsBloc.add(GetCouponList());
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
        child: BlocListener<CouponBloc, CouponState>(
          listener: (context, state) {
            if (state is CouponError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message!),
                ),
              );
            }
          },
          child: BlocBuilder<CouponBloc, CouponState>(
            builder: (context, state) {
              if (state is CouponInitial) {
                return _buildLoading();
              } else if (state is CouponLoading) {
                return _buildLoading();
              } else if (state is CouponLoaded) {
                return _buildCard(context, state.couponModel);
              } else if (state is CouponError) {
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

  Widget _buildCard(BuildContext context, CouponModel model) {
    return ListView.builder(
      itemCount: model.body!.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            title: Text("${model.body![index].code}"),
            onTap: () async {

            },


          ),
        );
      },
    );
  }

  Widget _buildLoading() => Center(child: CircularProgressIndicator());

}

