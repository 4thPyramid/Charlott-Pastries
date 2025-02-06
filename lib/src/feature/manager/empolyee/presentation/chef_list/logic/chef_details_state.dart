
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../../core/errors/error_model.dart';
import '../../../data/model/chef_details_response.dart';
part 'chef_details_state.freezed.dart';


@freezed
class ChefDetailsState<T> with _$ChefDetailsState {
  factory ChefDetailsState.initial() = ChefDetailsInitial;

  factory ChefDetailsState.loading() = ChefDetailsLoading;

  factory ChefDetailsState.failure(ErrorModel errorMessage) =
      ChefDetailsFailure;

  factory ChefDetailsState.success(ChefDetails chefResponse) = ChefDetailsuccess;
}
