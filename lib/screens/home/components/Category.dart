import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/blocs/category/CategoryBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/category/CategoryEvennt.dart';
import '../../../blocs/category/CategoryState.dart';
import '../../../models/Category.dart';
import '../../../size_config.dart';



class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  final CategoryBloc _categoryBloc = CategoryBloc();

  @override
  void initState() {
    _categoryBloc.add(GetCategoryList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => _categoryBloc,
        child: BlocListener<CategoryBloc, CategoryState>(
          listener: (context, state) {
            if (state is CategoryError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message!),
                ),
              );
            }
          },
          child: BlocBuilder<CategoryBloc, CategoryState>(
            builder: (context, state) {
              if (state is CategoryInitial) {
                return _buildLoading();
              } else if (state is CategoryLoading) {
                return _buildLoading();
              } else if (state is CategoryLoaded) {
                  print(state.category);
                return _buildCard(context, state.category);
              } else if (state is CategoryError) {
                return Container();
              } else {
                return Container();
              }
            },
          ),
        ),
      );

  }
  Widget _buildCard(BuildContext context, Category model) {
    return Container(
      height: 260,
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),

        child: GridView.builder(
          shrinkWrap:true,
            physics: ClampingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
          itemCount: model.body?.categories?.length,
        itemBuilder: (context, index){
            return Card(
              child: Column(
                children: [

                  CachedNetworkImage(
                    height: 50,
                    width: 50,
                    imageUrl: "${model.body?.categories![index].image?.url}",
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  Text("${model.body?.categories![index].name}",style: TextStyle(fontSize: 9),),
                ],
              ),
            );

        }),

    );

  }

  Widget _buildLoading() => Center(child: CircularProgressIndicator());
  
}

