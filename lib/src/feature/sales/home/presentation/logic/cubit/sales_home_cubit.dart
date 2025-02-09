import 'package:bloc/bloc.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/home/data/models/order_status_counts.dart';
import 'package:charlot/src/feature/sales/home/domain/usecases/get_order_stats_u_c.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_home_state.dart';
part 'sales_home_cubit.freezed.dart';

class SalesHomeCubit extends Cubit<SalesHomeState> {
  final GetOrderStatsUC getOrderStatsUC;

  SalesHomeCubit(this.getOrderStatsUC) : super(const SalesHomeState.initial());

  Future<void> getOrderStats() async {
    emit(const SalesHomeState.loading());
    final result = await getOrderStatsUC.call();
    result.fold(
      (error) => emit(SalesHomeState.failure(error)),
      (success) => emit(SalesHomeState.statsLoaded(success)),
    );
  }
}
