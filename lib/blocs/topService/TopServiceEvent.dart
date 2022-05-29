import 'package:equatable/equatable.dart';

abstract class TopServiceEvent extends Equatable {
  const TopServiceEvent();

  @override
  List<Object> get props => [];
}

class GetTopServiceList extends TopServiceEvent {}