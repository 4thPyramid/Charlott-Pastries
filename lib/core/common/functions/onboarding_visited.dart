import 'package:charlot/core/data/cached/cache_helper.dart';

void onBoardingVisited() {
  CacheHelper.saveData(key: 'onBoarding', value: true);
}