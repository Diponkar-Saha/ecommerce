import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/ApiRepository.dart';
import 'CouponEvent.dart';
import 'CouponState.dart';

class CouponBloc extends Bloc<CouponEvent, CouponState> {
  CouponBloc() : super(CouponInitial()) {
    final ApiRepository _apiRepository = ApiRepository();

    on<GetCouponList>((event, emit) async {
      try {
        emit(CouponLoading());
        final mList = await _apiRepository.fetchCouponList();
        emit(CouponLoaded(mList));
        if (mList.error != null) {
          emit(CouponError(mList.error));
        }
      } on NetworkError {
        emit(CouponError("Failed to fetch data. is your device online?"));
      }
    });
  }
}