
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_fcm_token_state.freezed.dart';

@freezed
class StoreFcmTokenState with _$StoreFcmTokenState {
  const factory StoreFcmTokenState.initial() = _Initial;
  const factory StoreFcmTokenState.loading() = _Loading;
  const factory StoreFcmTokenState.success(String message) = _Success;
  const factory StoreFcmTokenState.failure(String error) = _Failure;
}
