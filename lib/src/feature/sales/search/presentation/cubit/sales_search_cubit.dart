import 'package:bloc/bloc.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/search/data/model/sales_search_model.dart';
import 'package:charlot/src/feature/sales/search/domain/usecase/get_sales_search_uc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_search_state.dart';
part 'sales_search_cubit.freezed.dart';

class SalesSearchCubit extends Cubit<SalesSearchState> {
  final GetSalesSearchUC getSalesSearchUC;
  SalesSearchCubit(this.getSalesSearchUC)
      : super(const SalesSearchState.initial());

  Future<void> search(String query) async {
    emit(const SalesSearchState.loading());
    final result = await getSalesSearchUC.call(query);
    result.fold((error) {
      emit(SalesSearchState.error(error));
    }, (sales) {
      emit(SalesSearchState.loaded(sales));
    });
  }
}
