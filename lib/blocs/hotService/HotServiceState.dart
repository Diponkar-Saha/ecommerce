
import 'package:ecommerce/models/TopHotModel.dart';
import 'package:equatable/equatable.dart';

abstract class HotServiceState extends Equatable {
  const HotServiceState();

  @override
  List<Object?> get props => [];
}

class HotServiceInitial extends HotServiceState {}

class HotServiceLoading extends HotServiceState {}

class HotServiceLoaded extends HotServiceState {
  final TopHotModel hotHotModel;
  const HotServiceLoaded(this.hotHotModel);

}

class HotServiceError extends HotServiceState {
  final String? message;
  const HotServiceError(this.message);
}