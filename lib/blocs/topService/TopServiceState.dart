
import 'package:ecommerce/models/TopHotModel.dart';
import 'package:equatable/equatable.dart';

abstract class TopServiceState extends Equatable {
  const TopServiceState();

  @override
  List<Object?> get props => [];
}

class TopServiceInitial extends TopServiceState {}

class TopServiceLoading extends TopServiceState {}

class TopServiceLoaded extends TopServiceState {
  final TopHotModel topHotModel;
  const TopServiceLoaded(this.topHotModel);

}

class TopServiceError extends TopServiceState {
  final String? message;
  const TopServiceError(this.message);
}