// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


import '../../../../../../core/errors/error_model.dart';
import '../../data/model/profile_model.dart';
import '../../domain/usecase/get_profile_photo_uc.dart';
import '../../domain/usecase/update_profile_photo_uc.dart';
import '../../domain/usecase/update_profile_uc.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final GetProfileDataUC _getProfileDataUseCase;
  final UpdateProfileUc _updateProfileUc;
  final UpdateProfilePhoto _updateProfilePhotoUc;
  ProfileCubit(
    this._getProfileDataUseCase,
    this._updateProfileUc,
    this._updateProfilePhotoUc,
  ) : super(const ProfileState.initial());

  Future<void> getProfile({required String userTyp}) async {
    emit(const ProfileState.loading());
    final result = await _getProfileDataUseCase.call(userTyp);
    result.fold(
      (l) => emit(ProfileState.error(l)),
      (r) => emit(ProfileState.success(r)),
    );
  }

  Future<void> updateProfile({
    String? fName,
    String? lName,
    String? phone,
    String? email,
    required String userTyp
    
  }) async {
    emit(const ProfileState.loading());
    final result = await _updateProfileUc.call(
      ProfileModel(
        firstName: fName,
        lastName: lName,
        phone: phone,
        email: email,
      ) ,
      userTyp,
    );

    result.fold(
      (l) => emit(ProfileState.error(l)),
      (r) => emit(ProfileState.success(r)),
    );
  }

  Future<void> updateProfilePhoto(File? file,{required String userTyp}) async {
    emit(const ProfileState.loading());
    final result = await _updateProfilePhotoUc.call(
      file,userTyp
    
    );

    result.fold(
      (l) => emit(ProfileState.error(l)),
      (r) => emit(ProfileState.success(r)),
    );
  }
}
