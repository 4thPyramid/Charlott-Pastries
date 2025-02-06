import 'package:charlot/src/feature/manager/home/domain/repository/home_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/error_model.dart';
import '../../data/model/stats_response.dart';

class GetStatsUseCase {
  final HomeRepository _statsRepository;

  GetStatsUseCase(this._statsRepository);

  Future<Either<ErrorModel, StatsResponse>> call() async {
    return await _statsRepository.getStats();
  }
}
