

import 'package:charlot/core/common/branches_feature/data/models/branch_model.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'branches_state.freezed.dart';
@freezed
class BranchesState<T> with _$BranchesState {
  const factory BranchesState.initial() = _Initial;
  const factory BranchesState.loading() = _Loading;
  const factory BranchesState.loaded(BranchResponse branches) = _Loaded;
  const factory BranchesState.error(ErrorModel message) = _Error; 
}
