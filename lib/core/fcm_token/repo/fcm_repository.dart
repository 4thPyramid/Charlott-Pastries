import 'package:dartz/dartz.dart';

import '../../constants/endpoints_strings.dart';
import '../../data/api/api_consumer.dart';

abstract class FcmRepository {
  Future<Either<String, String>> storeToken(String fcmToken);
}

class FcmRepositoryImpl implements FcmRepository {
  final ApiConsumer apiConsumer;
  FcmRepositoryImpl(this.apiConsumer);

  @override
  Future<Either<String, String>> storeToken(String fcmToken) async {
    try {
      final response = await apiConsumer
          .post(EndpointsStrings.storeFcmToken, data: {'fcm_token': fcmToken});

      // return Right(response.data);

      return  Right(response['message']);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
