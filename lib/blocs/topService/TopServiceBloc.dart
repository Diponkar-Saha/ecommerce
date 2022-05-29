
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/ApiRepository.dart';
import 'TopServiceEvent.dart';
import 'TopServiceState.dart';

class TopServiceBloc extends Bloc<TopServiceEvent, TopServiceState> {
  TopServiceBloc() : super(TopServiceInitial()) {
    final ApiRepository _apiRepository = ApiRepository();

    on<GetTopServiceList>((event, emit) async {
      try {
        emit(TopServiceLoading());
        final mList = await _apiRepository.fetchTopModelList();
        emit(TopServiceLoaded(mList));
        if (mList.error != null) {
          emit(TopServiceError(mList.error));
        }
      } on NetworkError {
        emit(TopServiceError("Failed to fetch data. is your device online?"));
      }
    });
  }
}