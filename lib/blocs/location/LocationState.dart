
import 'package:equatable/equatable.dart';

import '../../models/Location.dart';

abstract class LocationState extends Equatable {
  const LocationState();

  @override
  List<Object?> get props => [];
}

class LocationInitial extends LocationState {}

class LocationLoading extends LocationState {}

class LocationLoaded extends LocationState {
  final Location location;
  const LocationLoaded(this.location);

}

class LocationError extends LocationState {
  final String? message;
  const LocationError(this.message);
}