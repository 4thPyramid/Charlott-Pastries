// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeesState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(EmployeesResponse ordersResponse) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(EmployeesResponse ordersResponse)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(EmployeesResponse ordersResponse)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeInitial<T> value) initial,
    required TResult Function(EmployeeLoading<T> value) loading,
    required TResult Function(EmployeeFailure<T> value) failure,
    required TResult Function(EmployeeSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmployeeInitial<T> value)? initial,
    TResult? Function(EmployeeLoading<T> value)? loading,
    TResult? Function(EmployeeFailure<T> value)? failure,
    TResult? Function(EmployeeSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeInitial<T> value)? initial,
    TResult Function(EmployeeLoading<T> value)? loading,
    TResult Function(EmployeeFailure<T> value)? failure,
    TResult Function(EmployeeSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeesStateCopyWith<T, $Res> {
  factory $EmployeesStateCopyWith(
          EmployeesState<T> value, $Res Function(EmployeesState<T>) then) =
      _$EmployeesStateCopyWithImpl<T, $Res, EmployeesState<T>>;
}

/// @nodoc
class _$EmployeesStateCopyWithImpl<T, $Res, $Val extends EmployeesState<T>>
    implements $EmployeesStateCopyWith<T, $Res> {
  _$EmployeesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmployeeInitialImplCopyWith<T, $Res> {
  factory _$$EmployeeInitialImplCopyWith(_$EmployeeInitialImpl<T> value,
          $Res Function(_$EmployeeInitialImpl<T>) then) =
      __$$EmployeeInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmployeeInitialImplCopyWithImpl<T, $Res>
    extends _$EmployeesStateCopyWithImpl<T, $Res, _$EmployeeInitialImpl<T>>
    implements _$$EmployeeInitialImplCopyWith<T, $Res> {
  __$$EmployeeInitialImplCopyWithImpl(_$EmployeeInitialImpl<T> _value,
      $Res Function(_$EmployeeInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmployeeInitialImpl<T> implements EmployeeInitial<T> {
  _$EmployeeInitialImpl();

  @override
  String toString() {
    return 'EmployeesState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmployeeInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(EmployeesResponse ordersResponse) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(EmployeesResponse ordersResponse)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(EmployeesResponse ordersResponse)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeInitial<T> value) initial,
    required TResult Function(EmployeeLoading<T> value) loading,
    required TResult Function(EmployeeFailure<T> value) failure,
    required TResult Function(EmployeeSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmployeeInitial<T> value)? initial,
    TResult? Function(EmployeeLoading<T> value)? loading,
    TResult? Function(EmployeeFailure<T> value)? failure,
    TResult? Function(EmployeeSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeInitial<T> value)? initial,
    TResult Function(EmployeeLoading<T> value)? loading,
    TResult Function(EmployeeFailure<T> value)? failure,
    TResult Function(EmployeeSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EmployeeInitial<T> implements EmployeesState<T> {
  factory EmployeeInitial() = _$EmployeeInitialImpl<T>;
}

/// @nodoc
abstract class _$$EmployeeLoadingImplCopyWith<T, $Res> {
  factory _$$EmployeeLoadingImplCopyWith(_$EmployeeLoadingImpl<T> value,
          $Res Function(_$EmployeeLoadingImpl<T>) then) =
      __$$EmployeeLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmployeeLoadingImplCopyWithImpl<T, $Res>
    extends _$EmployeesStateCopyWithImpl<T, $Res, _$EmployeeLoadingImpl<T>>
    implements _$$EmployeeLoadingImplCopyWith<T, $Res> {
  __$$EmployeeLoadingImplCopyWithImpl(_$EmployeeLoadingImpl<T> _value,
      $Res Function(_$EmployeeLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmployeeLoadingImpl<T> implements EmployeeLoading<T> {
  _$EmployeeLoadingImpl();

  @override
  String toString() {
    return 'EmployeesState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmployeeLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(EmployeesResponse ordersResponse) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(EmployeesResponse ordersResponse)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(EmployeesResponse ordersResponse)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeInitial<T> value) initial,
    required TResult Function(EmployeeLoading<T> value) loading,
    required TResult Function(EmployeeFailure<T> value) failure,
    required TResult Function(EmployeeSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmployeeInitial<T> value)? initial,
    TResult? Function(EmployeeLoading<T> value)? loading,
    TResult? Function(EmployeeFailure<T> value)? failure,
    TResult? Function(EmployeeSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeInitial<T> value)? initial,
    TResult Function(EmployeeLoading<T> value)? loading,
    TResult Function(EmployeeFailure<T> value)? failure,
    TResult Function(EmployeeSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EmployeeLoading<T> implements EmployeesState<T> {
  factory EmployeeLoading() = _$EmployeeLoadingImpl<T>;
}

/// @nodoc
abstract class _$$EmployeeFailureImplCopyWith<T, $Res> {
  factory _$$EmployeeFailureImplCopyWith(_$EmployeeFailureImpl<T> value,
          $Res Function(_$EmployeeFailureImpl<T>) then) =
      __$$EmployeeFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$EmployeeFailureImplCopyWithImpl<T, $Res>
    extends _$EmployeesStateCopyWithImpl<T, $Res, _$EmployeeFailureImpl<T>>
    implements _$$EmployeeFailureImplCopyWith<T, $Res> {
  __$$EmployeeFailureImplCopyWithImpl(_$EmployeeFailureImpl<T> _value,
      $Res Function(_$EmployeeFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$EmployeeFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$EmployeeFailureImpl<T> implements EmployeeFailure<T> {
  _$EmployeeFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'EmployeesState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeFailureImplCopyWith<T, _$EmployeeFailureImpl<T>> get copyWith =>
      __$$EmployeeFailureImplCopyWithImpl<T, _$EmployeeFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(EmployeesResponse ordersResponse) success,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(EmployeesResponse ordersResponse)? success,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(EmployeesResponse ordersResponse)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeInitial<T> value) initial,
    required TResult Function(EmployeeLoading<T> value) loading,
    required TResult Function(EmployeeFailure<T> value) failure,
    required TResult Function(EmployeeSuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmployeeInitial<T> value)? initial,
    TResult? Function(EmployeeLoading<T> value)? loading,
    TResult? Function(EmployeeFailure<T> value)? failure,
    TResult? Function(EmployeeSuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeInitial<T> value)? initial,
    TResult Function(EmployeeLoading<T> value)? loading,
    TResult Function(EmployeeFailure<T> value)? failure,
    TResult Function(EmployeeSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class EmployeeFailure<T> implements EmployeesState<T> {
  factory EmployeeFailure(final ErrorModel errorMessage) =
      _$EmployeeFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeFailureImplCopyWith<T, _$EmployeeFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmployeeSuccessImplCopyWith<T, $Res> {
  factory _$$EmployeeSuccessImplCopyWith(_$EmployeeSuccessImpl<T> value,
          $Res Function(_$EmployeeSuccessImpl<T>) then) =
      __$$EmployeeSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({EmployeesResponse ordersResponse});
}

/// @nodoc
class __$$EmployeeSuccessImplCopyWithImpl<T, $Res>
    extends _$EmployeesStateCopyWithImpl<T, $Res, _$EmployeeSuccessImpl<T>>
    implements _$$EmployeeSuccessImplCopyWith<T, $Res> {
  __$$EmployeeSuccessImplCopyWithImpl(_$EmployeeSuccessImpl<T> _value,
      $Res Function(_$EmployeeSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersResponse = null,
  }) {
    return _then(_$EmployeeSuccessImpl<T>(
      null == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as EmployeesResponse,
    ));
  }
}

/// @nodoc

class _$EmployeeSuccessImpl<T> implements EmployeeSuccess<T> {
  _$EmployeeSuccessImpl(this.ordersResponse);

  @override
  final EmployeesResponse ordersResponse;

  @override
  String toString() {
    return 'EmployeesState<$T>.success(ordersResponse: $ordersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeSuccessImpl<T> &&
            (identical(other.ordersResponse, ordersResponse) ||
                other.ordersResponse == ordersResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersResponse);

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeSuccessImplCopyWith<T, _$EmployeeSuccessImpl<T>> get copyWith =>
      __$$EmployeeSuccessImplCopyWithImpl<T, _$EmployeeSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(EmployeesResponse ordersResponse) success,
  }) {
    return success(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(EmployeesResponse ordersResponse)? success,
  }) {
    return success?.call(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(EmployeesResponse ordersResponse)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(ordersResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeInitial<T> value) initial,
    required TResult Function(EmployeeLoading<T> value) loading,
    required TResult Function(EmployeeFailure<T> value) failure,
    required TResult Function(EmployeeSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmployeeInitial<T> value)? initial,
    TResult? Function(EmployeeLoading<T> value)? loading,
    TResult? Function(EmployeeFailure<T> value)? failure,
    TResult? Function(EmployeeSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeInitial<T> value)? initial,
    TResult Function(EmployeeLoading<T> value)? loading,
    TResult Function(EmployeeFailure<T> value)? failure,
    TResult Function(EmployeeSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class EmployeeSuccess<T> implements EmployeesState<T> {
  factory EmployeeSuccess(final EmployeesResponse ordersResponse) =
      _$EmployeeSuccessImpl<T>;

  EmployeesResponse get ordersResponse;

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeSuccessImplCopyWith<T, _$EmployeeSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
