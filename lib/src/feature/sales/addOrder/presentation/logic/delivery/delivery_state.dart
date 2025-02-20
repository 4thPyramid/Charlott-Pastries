import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
import '../../../../../manager/empolyee/data/model/employee_response.dart';

part 'delivery_state.freezed.dart';

@freezed
class GetDeliveryState with _$GetDeliveryState {
  const factory GetDeliveryState.initial() = _Initial;
  const factory GetDeliveryState.loading() = _Loading;
  const factory GetDeliveryState.success(EmployeesResponse response) = _Success;
  const factory GetDeliveryState.failure(ErrorModel error) = _Failure;
}
