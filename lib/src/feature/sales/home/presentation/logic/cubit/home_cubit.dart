import 'package:bloc/bloc.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/home/data/mdoels/orders_state.dart';
import 'package:charlot/src/feature/sales/home/domain/usecases/get_banner_u_c.dart';
import 'package:charlot/src/feature/sales/home/domain/usecases/get_order_stats_u_c.dart';
import 'package:charlot/src/feature/sales/home/domain/usecases/get_profile_u_s.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetBannerUC getBannerUC;
  final GetProfileUS getProfileUC;
  final GetOrderStatsUC getOrderStatsUC;
  HomeCubit(this.getBannerUC, this.getProfileUC, this.getOrderStatsUC) : super(const HomeState.initial());

 
  

  Future<void> getOrderStats() async {
    emit(const HomeState.loading());
    final result = await getOrderStatsUC.call();
    result.fold(
      (error) => emit(HomeState.failure(error)),
      (success) => emit(HomeState.statsLoaded(success) ),

    );}
  

}
