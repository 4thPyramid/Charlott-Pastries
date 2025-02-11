import 'package:bloc/bloc.dart';
import 'package:charlot/core/errors/error_model.dart';
import 'package:charlot/src/feature/sales/addOrder/data/models/readyOrdersModes/single_product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ready_order_details_state.dart';
part 'ready_order_details_cubit.freezed.dart';

class ReadyOrderDetailsCubit extends Cubit<ReadyOrderDetailsState> {
  ReadyOrderDetailsCubit() : super(ReadyOrderDetailsState.initial());
}
