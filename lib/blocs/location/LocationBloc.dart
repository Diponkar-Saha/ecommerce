import '../../repository/ApiRepository.dart';
import 'LocationEvent.dart';
import 'LocationState.dart';
import 'package:bloc/bloc.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationInitial()) {
    final ApiRepository _apiRepository = ApiRepository();

    on<GetLocationList>((event, emit) async {
      try {
        emit(LocationLoading());
        final mList = await _apiRepository.fetchCovidList();
        emit(LocationLoaded(mList));
        if (mList.error != null) {
          emit(LocationError(mList.error));
        }
      } on NetworkError {
        emit(LocationError("Failed to fetch data. is your device online?"));
      }
    });
  }
}