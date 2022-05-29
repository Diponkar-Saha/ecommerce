
import 'package:ecommerce/models/Coupons.dart';
import 'package:equatable/equatable.dart';

abstract class CouponState extends Equatable {
  const CouponState();

  @override
  List<Object?> get props => [];
}

class CouponInitial extends CouponState {}

class CouponLoading extends CouponState {}

class CouponLoaded extends CouponState {
  final CouponModel couponModel;
  const CouponLoaded(this.couponModel);

}

class CouponError extends CouponState {
  final String? message;
  const CouponError(this.message);
}