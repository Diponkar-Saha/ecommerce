
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/ApiRepository.dart';
import 'TopCatagoryEvent.dart';
import 'TopCatagoryState.dart';

class TopCategoryBloc extends Bloc<TopCategoryEvent, TopCategoryState> {
  TopCategoryBloc() : super(TopCategoryInitial()) {
    final ApiRepository _apiRepository = ApiRepository();

    on<GetTopCategoryList>((event, emit) async {
      try {
        emit(TopCategoryLoading());
        final mList = await _apiRepository.fetchTopCategoryList();
        emit(TopCategoryLoaded(mList));
        if (mList.error != null) {
          emit(TopCategoryError(mList.error));
        }
      } on NetworkError {
        emit(TopCategoryError("Failed to fetch data. is your device online?"));
      }
    });
  }
}