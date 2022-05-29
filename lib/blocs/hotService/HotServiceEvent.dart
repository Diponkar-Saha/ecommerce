import 'package:equatable/equatable.dart';

abstract class HotServiceEvent extends Equatable {
  const HotServiceEvent();

  @override
  List<Object> get props => [];
}

class GetHotServiceList extends HotServiceEvent {}