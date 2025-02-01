import 'package:charlot/core/common/specialization_feature/domain/models/specialization_model.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'specialization_state.freezed.dart';

@freezed
class SpecializationState <T> with _$SpecializationState {
  const factory SpecializationState.initial() = _Initial;
  const factory SpecializationState.loading() = _Loading;
  const factory SpecializationState.Loaded(SpecializationModel specializations) = _Loaded;
  const factory SpecializationState.error(ErrorModel error) = _Error;
}
