import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_stats_use_case.dart';
import 'stats_state.dart';

class StatsCubit extends Cubit<StatsState<dynamic>> {
  final GetStatsUseCase _statsUseCase;

  StatsCubit(this._statsUseCase) : super(StatsState.initial());

  Future<void> call() async {
    emit(StatsState.loading());

   final result = await _statsUseCase.call();

    result.fold(
      (error) => emit(StatsState.failure(error)),
      (success) => emit(StatsState.success(success)),
    );
  }
}