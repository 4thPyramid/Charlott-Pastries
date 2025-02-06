import 'package:bloc/bloc.dart';
import 'package:charlot/core/common/branches_feature/presentation/logic/cubit/cubit/branches_state.dart';
import 'package:charlot/core/common/branches_feature/domain/usecases/get_branches_uc.dart';

class BranchesCubit extends Cubit<BranchesState> {
  final GetBranchesUc getBranchesUc;
  BranchesCubit(this.getBranchesUc) : super(BranchesState.initial());

  Future<void> getBranches() async {
    emit(const BranchesState.Loading());
    final result = await getBranchesUc();
    result.fold(
      (l) => emit(BranchesState.error(l)),
      (r) => emit(BranchesState.Loaded(r)));
  }
}
