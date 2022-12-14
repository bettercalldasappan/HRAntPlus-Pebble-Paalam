import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'heart_rate_data_state.dart';

class HeartRateDataCubit extends Cubit<HeartRateDataState> {
  HeartRateDataCubit() : super(HeartRateDataNotConnected());

  void heartRateStatusChanged(bool isConnected) {
    if (isConnected) {
      emit(HeartRateDataConnected());
    } else {
      emit(HeartRateDataNotConnected());
    }
  }
}
