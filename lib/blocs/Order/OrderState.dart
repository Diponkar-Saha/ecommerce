
import 'package:ecommerce/models/Order.dart';
import 'package:equatable/equatable.dart';

abstract class OrderState extends Equatable {
  const OrderState();

  @override
  List<Object?> get props => [];
}

class OrderInitial extends OrderState {}

class OrderLoading extends OrderState {}

class OrderLoaded extends OrderState {
  final OrderResponse orderResponse;
  const OrderLoaded(this.orderResponse);

}

class OrderError extends OrderState {
  final String? message;
  const OrderError(this.message);
}