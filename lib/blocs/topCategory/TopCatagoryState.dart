
import 'package:ecommerce/models/TopCategoryModel.dart';
import 'package:equatable/equatable.dart';

abstract class TopCategoryState extends Equatable {
  const TopCategoryState();

  @override
  List<Object?> get props => [];
}

class TopCategoryInitial extends TopCategoryState {}

class TopCategoryLoading extends TopCategoryState {}

class TopCategoryLoaded extends TopCategoryState {
  final TopCategoriesModel topCategoriesModel;
  const TopCategoryLoaded(this.topCategoriesModel);

}

class TopCategoryError extends TopCategoryState {
  final String? message;
  const TopCategoryError(this.message);
}