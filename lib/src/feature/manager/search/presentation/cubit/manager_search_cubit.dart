import 'package:bloc/bloc.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/manager/search/data/model/manager_search_model.dart';
import 'package:charlot/src/feature/manager/search/domain/usecase/get_manager_search_uc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manager_search_state.dart';
part 'manager_search_cubit.freezed.dart';

class ManagerSearchCubit extends Cubit<ManagerSearchState> {
  final GetManagerSearchUC getManagerSearchUC;
  ManagerSearchCubit(this.getManagerSearchUC)
      : super(const ManagerSearchState.initial());

  Future<void> search(String query) async {
    emit(const ManagerSearchState.loading());
    final result = await getManagerSearchUC.call(query);
    result.fold((error) {
      emit(ManagerSearchState.error(error));
    }, (sales) {
      emit(ManagerSearchState.loaded(sales));
    });
  }
}
