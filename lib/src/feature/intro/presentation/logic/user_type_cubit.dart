import 'package:charlot/core/data/cached/cache_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/enum/user_type_enum.dart';
import 'user_type_state.dart';

class UserTypeCubit extends Cubit<UserTypeState> {
  UserTypeCubit() : super(const UserTypeState(userType: UserTypeEnum.none, isLoggedIn: false)) {
    _loadUserType();
  }

  void _loadUserType() {
    final userTypeIndex = CacheHelper.getData(key: 'userType') ?? UserTypeEnum.none.index;
    final isLoggedIn = CacheHelper.getData(key: 'isLoggedIn') ?? false;

    emit(UserTypeState(userType: UserTypeEnum.values[userTypeIndex], isLoggedIn: isLoggedIn));
  }

  void selectUserType(UserTypeEnum userType) {
    CacheHelper.saveData(key: 'userType', value: userType.index);
    emit(state.copyWith(userType: userType));
  }

  void login() {
    CacheHelper.saveData(key: 'isLoggedIn', value: true);
    emit(state.copyWith(isLoggedIn: true));
  }

  void logout() {
    CacheHelper.saveData(key: 'isLoggedIn', value: false);
    emit(const UserTypeState(userType: UserTypeEnum.none, isLoggedIn: false));
  }
}