import '../../repository/ApiRepository.dart';
import 'package:bloc/bloc.dart';
import 'CategoryEvennt.dart';
import 'CategoryState.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(CategoryInitial()) {
    final ApiRepository _apiRepository = ApiRepository();

    on<GetCategoryList>((event, emit) async {
      try {
        emit(CategoryLoading());
        final mList = await _apiRepository.fetchCategoryList();
        emit(CategoryLoaded(mList));
        if (mList.error != null) {
          emit(CategoryError(mList.error));
        }
      } on NetworkError {
        emit(CategoryError("Failed to fetch data. is your device online?"));
      }
    });
  }
}