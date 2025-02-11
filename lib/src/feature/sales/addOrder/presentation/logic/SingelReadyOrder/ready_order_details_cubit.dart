// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/readyOrdersModes/single_product_model.dart';
import 'package:charlot/src/feature/sales/addOrder/domain/usecase/get_ready_order_details.dart';

part 'ready_order_details_cubit.freezed.dart';
part 'ready_order_details_state.dart';

class ReadyOrderDetailsCubit extends Cubit<ReadyOrderDetailsState> {
  final GetReadyOrderDetailsUC _getReadyOrderDetailsUC;
  ReadyOrderDetailsCubit(
    this._getReadyOrderDetailsUC,
  ) : super(const ReadyOrderDetailsState.initial());

  Future<void> getReadyOrderDetails(int id) async {
    emit(const ReadyOrderDetailsState.loading());
    final result = await _getReadyOrderDetailsUC(id);
    result.fold(
      (l) => emit(ReadyOrderDetailsState.error(l)),
      (r) => emit(ReadyOrderDetailsState.ready(r)),
    );
  }
}
