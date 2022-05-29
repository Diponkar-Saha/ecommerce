import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/ApiRepository.dart';
import 'OrderEvent.dart';
import 'OrderState.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(OrderInitial()) {
    final ApiRepository _apiRepository = ApiRepository();

    on<GetOrderList>((event, emit) async {
      try {
        emit(OrderLoading());
        final mList = await _apiRepository.fetchOrderList();
        emit(OrderLoaded(mList));
        if (mList.error != null) {
          emit(OrderError(mList.error));
        }
      } on NetworkError {
        emit(OrderError("Failed to fetch data. is your device online?"));
      }
    });
  }
}