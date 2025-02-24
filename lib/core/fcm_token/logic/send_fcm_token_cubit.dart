import 'package:flutter_bloc/flutter_bloc.dart';

import '../repo/fcm_repository.dart';
import 'store_fcm_token_state.dart';

class StoreFcmTokenCubit extends Cubit<StoreFcmTokenState> {
  final FcmRepository fcmRepository;

  StoreFcmTokenCubit( this.fcmRepository)
      : super(const StoreFcmTokenState.initial());

  Future<void> storeToken(String fcmToken) async {
    emit(const StoreFcmTokenState.loading());
    try {
      await fcmRepository.storeToken(fcmToken);
      emit(const StoreFcmTokenState.success('Token stored successfully'));
    } catch (e) {
      emit(StoreFcmTokenState.failure(e.toString()));
    }
  }
}
