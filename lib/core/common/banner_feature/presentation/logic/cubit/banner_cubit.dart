import 'package:bloc/bloc.dart';
import 'package:charlot/core/common/banner_feature/data/model/banner_model.dart';
import 'package:charlot/core/common/banner_feature/domain/use_case/banner_use_case.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_state.dart';
part 'banner_cubit.freezed.dart';

class BannerCubit extends Cubit<BannerState> {
  final BannerUseCase bannerUseCase;
  BannerCubit(this.bannerUseCase) : super(const BannerState.initial());

  Future<void> getBanners() async {
    emit(const BannerState.Loading());
    final result = await bannerUseCase();
    result.fold(
       (l) => emit(BannerState.error(l)),
       (r) => emit(BannerState.Loaded(r)));
  }
}
