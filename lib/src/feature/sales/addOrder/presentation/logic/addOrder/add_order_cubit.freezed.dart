// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddOrderState {
  bool get isSameDay => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSameDay) initial,
    required TResult Function(bool isSameDay) loading,
    required TResult Function(ErrorModel error, bool isSameDay) failure,
    required TResult Function(AddOrderResponseModel message, bool isSameDay)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSameDay)? initial,
    TResult? Function(bool isSameDay)? loading,
    TResult? Function(ErrorModel error, bool isSameDay)? failure,
    TResult? Function(AddOrderResponseModel message, bool isSameDay)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSameDay)? initial,
    TResult Function(bool isSameDay)? loading,
    TResult Function(ErrorModel error, bool isSameDay)? failure,
    TResult Function(AddOrderResponseModel message, bool isSameDay)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddOrderStateCopyWith<AddOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOrderStateCopyWith<$Res> {
  factory $AddOrderStateCopyWith(
          AddOrderState value, $Res Function(AddOrderState) then) =
      _$AddOrderStateCopyWithImpl<$Res, AddOrderState>;
  @useResult
  $Res call({bool isSameDay});
}

/// @nodoc
class _$AddOrderStateCopyWithImpl<$Res, $Val extends AddOrderState>
    implements $AddOrderStateCopyWith<$Res> {
  _$AddOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSameDay = null,
  }) {
    return _then(_value.copyWith(
      isSameDay: null == isSameDay
          ? _value.isSameDay
          : isSameDay // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSameDay});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSameDay = null,
  }) {
    return _then(_$InitialImpl(
      isSameDay: null == isSameDay
          ? _value.isSameDay
          : isSameDay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.isSameDay = false});

  @override
  @JsonKey()
  final bool isSameDay;

  @override
  String toString() {
    return 'AddOrderState.initial(isSameDay: $isSameDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isSameDay, isSameDay) ||
                other.isSameDay == isSameDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSameDay);

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSameDay) initial,
    required TResult Function(bool isSameDay) loading,
    required TResult Function(ErrorModel error, bool isSameDay) failure,
    required TResult Function(AddOrderResponseModel message, bool isSameDay)
        success,
  }) {
    return initial(isSameDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSameDay)? initial,
    TResult? Function(bool isSameDay)? loading,
    TResult? Function(ErrorModel error, bool isSameDay)? failure,
    TResult? Function(AddOrderResponseModel message, bool isSameDay)? success,
  }) {
    return initial?.call(isSameDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSameDay)? initial,
    TResult Function(bool isSameDay)? loading,
    TResult Function(ErrorModel error, bool isSameDay)? failure,
    TResult Function(AddOrderResponseModel message, bool isSameDay)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isSameDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddOrderState {
  const factory _Initial({final bool isSameDay}) = _$InitialImpl;

  @override
  bool get isSameDay;

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSameDay});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSameDay = null,
  }) {
    return _then(_$LoadingImpl(
      isSameDay: null == isSameDay
          ? _value.isSameDay
          : isSameDay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({this.isSameDay = false});

  @override
  @JsonKey()
  final bool isSameDay;

  @override
  String toString() {
    return 'AddOrderState.loading(isSameDay: $isSameDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.isSameDay, isSameDay) ||
                other.isSameDay == isSameDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSameDay);

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSameDay) initial,
    required TResult Function(bool isSameDay) loading,
    required TResult Function(ErrorModel error, bool isSameDay) failure,
    required TResult Function(AddOrderResponseModel message, bool isSameDay)
        success,
  }) {
    return loading(isSameDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSameDay)? initial,
    TResult? Function(bool isSameDay)? loading,
    TResult? Function(ErrorModel error, bool isSameDay)? failure,
    TResult? Function(AddOrderResponseModel message, bool isSameDay)? success,
  }) {
    return loading?.call(isSameDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSameDay)? initial,
    TResult Function(bool isSameDay)? loading,
    TResult Function(ErrorModel error, bool isSameDay)? failure,
    TResult Function(AddOrderResponseModel message, bool isSameDay)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isSameDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AddOrderState {
  const factory _Loading({final bool isSameDay}) = _$LoadingImpl;

  @override
  bool get isSameDay;

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ErrorModel error, bool isSameDay});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isSameDay = null,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
      isSameDay: null == isSameDay
          ? _value.isSameDay
          : isSameDay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.error, {this.isSameDay = false});

  @override
  final ErrorModel error;
  @override
  @JsonKey()
  final bool isSameDay;

  @override
  String toString() {
    return 'AddOrderState.failure(error: $error, isSameDay: $isSameDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isSameDay, isSameDay) ||
                other.isSameDay == isSameDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, isSameDay);

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSameDay) initial,
    required TResult Function(bool isSameDay) loading,
    required TResult Function(ErrorModel error, bool isSameDay) failure,
    required TResult Function(AddOrderResponseModel message, bool isSameDay)
        success,
  }) {
    return failure(error, isSameDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSameDay)? initial,
    TResult? Function(bool isSameDay)? loading,
    TResult? Function(ErrorModel error, bool isSameDay)? failure,
    TResult? Function(AddOrderResponseModel message, bool isSameDay)? success,
  }) {
    return failure?.call(error, isSameDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSameDay)? initial,
    TResult Function(bool isSameDay)? loading,
    TResult Function(ErrorModel error, bool isSameDay)? failure,
    TResult Function(AddOrderResponseModel message, bool isSameDay)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error, isSameDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AddOrderState {
  const factory _Failure(final ErrorModel error, {final bool isSameDay}) =
      _$FailureImpl;

  ErrorModel get error;
  @override
  bool get isSameDay;

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $AddOrderStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddOrderResponseModel message, bool isSameDay});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AddOrderStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isSameDay = null,
  }) {
    return _then(_$SuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as AddOrderResponseModel,
      isSameDay: null == isSameDay
          ? _value.isSameDay
          : isSameDay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.message, {this.isSameDay = false});

  @override
  final AddOrderResponseModel message;
  @override
  @JsonKey()
  final bool isSameDay;

  @override
  String toString() {
    return 'AddOrderState.success(message: $message, isSameDay: $isSameDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSameDay, isSameDay) ||
                other.isSameDay == isSameDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, isSameDay);

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSameDay) initial,
    required TResult Function(bool isSameDay) loading,
    required TResult Function(ErrorModel error, bool isSameDay) failure,
    required TResult Function(AddOrderResponseModel message, bool isSameDay)
        success,
  }) {
    return success(message, isSameDay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isSameDay)? initial,
    TResult? Function(bool isSameDay)? loading,
    TResult? Function(ErrorModel error, bool isSameDay)? failure,
    TResult? Function(AddOrderResponseModel message, bool isSameDay)? success,
  }) {
    return success?.call(message, isSameDay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSameDay)? initial,
    TResult Function(bool isSameDay)? loading,
    TResult Function(ErrorModel error, bool isSameDay)? failure,
    TResult Function(AddOrderResponseModel message, bool isSameDay)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message, isSameDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AddOrderState {
  const factory _Success(final AddOrderResponseModel message,
      {final bool isSameDay}) = _$SuccessImpl;

  AddOrderResponseModel get message;
  @override
  bool get isSameDay;

  /// Create a copy of AddOrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
