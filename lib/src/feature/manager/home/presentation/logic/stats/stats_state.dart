import 'package:charlot/src/feature/manager/home/data/model/stats_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';

part 'stats_state.freezed.dart';

@freezed
class StatsState<T> with _$StatsState {
  factory StatsState.initial() = StatsInitial;

  factory StatsState.loading() = StatsLoading;

  factory StatsState.failure(ErrorModel errorMessage) =
      StatsFailure;

  factory StatsState.success(StatsResponse ordersResponse) = StatsSuccess;
}
