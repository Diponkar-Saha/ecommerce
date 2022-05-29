import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repository/ApiRepository.dart';
import 'HotServiceEvent.dart';
import 'HotServiceState.dart';


class HotServiceBloc extends Bloc<HotServiceEvent, HotServiceState> {
  HotServiceBloc() : super(HotServiceInitial()) {
    final ApiRepository _apiRepository = ApiRepository();

    on<GetHotServiceList>((event, emit) async {
      try {
        emit(HotServiceLoading());
        final mList = await _apiRepository.fetchHotModelList();
        emit(HotServiceLoaded(mList));
        if (mList.error != null) {
          emit(HotServiceError(mList.error));
        }
      } on NetworkError {
        emit(HotServiceError("Failed to fetch data. is your device online?"));
      }
    });
  }
}