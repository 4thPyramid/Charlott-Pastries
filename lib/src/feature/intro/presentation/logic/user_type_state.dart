import '../../data/enum/user_type_enum.dart';
import 'package:equatable/equatable.dart';


class UserTypeState extends Equatable {
  final UserTypeEnum userType;
  final bool isLoggedIn;

  const UserTypeState({required this.userType, required this.isLoggedIn});

  @override
  List<Object> get props => [userType, isLoggedIn];

  UserTypeState copyWith({UserTypeEnum? userType, bool? isLoggedIn}) {
    return UserTypeState(
      userType: userType ?? this.userType,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
    );
  }
}