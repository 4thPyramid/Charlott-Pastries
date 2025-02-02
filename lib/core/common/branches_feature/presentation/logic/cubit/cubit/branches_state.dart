

import 'package:charlot/core/common/branches_feature/data/models/branch_model.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'branches_state.freezed.dart';
@freezed
class BranchesState<T> with _$BranchesState {
  const factory BranchesState.initial() = _Initial;
  const factory BranchesState.Loading() = _Loading;
  const factory BranchesState.Loaded(BranchModel branches) = _Loaded;
  const factory BranchesState.error(ErrorModel message) = _Erorr; 
}
