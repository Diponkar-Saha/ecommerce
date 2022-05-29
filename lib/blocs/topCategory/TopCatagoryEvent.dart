import 'package:equatable/equatable.dart';

abstract class TopCategoryEvent extends Equatable {
  const TopCategoryEvent();

  @override
  List<Object> get props => [];
}

class GetTopCategoryList extends TopCategoryEvent {}