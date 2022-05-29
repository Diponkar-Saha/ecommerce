
import 'package:equatable/equatable.dart';

import '../../models/SuperDeal.dart';

abstract class SuperDealState extends Equatable {
  const SuperDealState();

  @override
  List<Object?> get props => [];
}

class SuperDealInitial extends SuperDealState {}

class SuperDealLoading extends SuperDealState {}

class SuperDealLoaded extends SuperDealState {
  final SuperDeal superDeal;
  const SuperDealLoaded(this.superDeal);

}

class SuperDealError extends SuperDealState {
  final String? message;
  const SuperDealError(this.message);
}