part of 'banner_cubit.dart';

@freezed
class BannerState<T> with _$BannerState {
  const factory BannerState.initial() = _Initial;
  const factory BannerState.Loading() = _Loading;
  const factory BannerState.Loaded(List<BannerModel> banner) = _Loaded;
  const factory BannerState.error(ErrorModel error) = _Erorr;
}
