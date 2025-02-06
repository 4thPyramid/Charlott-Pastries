// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refused_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RefusedOrderState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(RefusedOrderResponse ordersResponse) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(RefusedOrderResponse ordersResponse)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(RefusedOrderResponse ordersResponse)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefusedOrderInitial<T> value) initial,
    required TResult Function(RefusedOrderLoading<T> value) loading,
    required TResult Function(RefusedOrderFailure<T> value) failure,
    required TResult Function(RefusedOrderSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefusedOrderInitial<T> value)? initial,
    TResult? Function(RefusedOrderLoading<T> value)? loading,
    TResult? Function(RefusedOrderFailure<T> value)? failure,
    TResult? Function(RefusedOrderSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefusedOrderInitial<T> value)? initial,
    TResult Function(RefusedOrderLoading<T> value)? loading,
    TResult Function(RefusedOrderFailure<T> value)? failure,
    TResult Function(RefusedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefusedOrderStateCopyWith<T, $Res> {
  factory $RefusedOrderStateCopyWith(RefusedOrderState<T> value,
          $Res Function(RefusedOrderState<T>) then) =
      _$RefusedOrderStateCopyWithImpl<T, $Res, RefusedOrderState<T>>;
}

/// @nodoc
class _$RefusedOrderStateCopyWithImpl<T, $Res,
        $Val extends RefusedOrderState<T>>
    implements $RefusedOrderStateCopyWith<T, $Res> {
  _$RefusedOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefusedOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RefusedOrderInitialImplCopyWith<T, $Res> {
  factory _$$RefusedOrderInitialImplCopyWith(_$RefusedOrderInitialImpl<T> value,
          $Res Function(_$RefusedOrderInitialImpl<T>) then) =
      __$$RefusedOrderInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RefusedOrderInitialImplCopyWithImpl<T, $Res>
    extends _$RefusedOrderStateCopyWithImpl<T, $Res,
        _$RefusedOrderInitialImpl<T>>
    implements _$$RefusedOrderInitialImplCopyWith<T, $Res> {
  __$$RefusedOrderInitialImplCopyWithImpl(_$RefusedOrderInitialImpl<T> _value,
      $Res Function(_$RefusedOrderInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RefusedOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefusedOrderInitialImpl<T> implements RefusedOrderInitial<T> {
  _$RefusedOrderInitialImpl();

  @override
  String toString() {
    return 'RefusedOrderState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefusedOrderInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(RefusedOrderResponse ordersResponse) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(RefusedOrderResponse ordersResponse)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(RefusedOrderResponse ordersResponse)? success,
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
    required TResult Function(RefusedOrderInitial<T> value) initial,
    required TResult Function(RefusedOrderLoading<T> value) loading,
    required TResult Function(RefusedOrderFailure<T> value) failure,
    required TResult Function(RefusedOrderSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefusedOrderInitial<T> value)? initial,
    TResult? Function(RefusedOrderLoading<T> value)? loading,
    TResult? Function(RefusedOrderFailure<T> value)? failure,
    TResult? Function(RefusedOrderSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefusedOrderInitial<T> value)? initial,
    TResult Function(RefusedOrderLoading<T> value)? loading,
    TResult Function(RefusedOrderFailure<T> value)? failure,
    TResult Function(RefusedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RefusedOrderInitial<T> implements RefusedOrderState<T> {
  factory RefusedOrderInitial() = _$RefusedOrderInitialImpl<T>;
}

/// @nodoc
abstract class _$$RefusedOrderLoadingImplCopyWith<T, $Res> {
  factory _$$RefusedOrderLoadingImplCopyWith(_$RefusedOrderLoadingImpl<T> value,
          $Res Function(_$RefusedOrderLoadingImpl<T>) then) =
      __$$RefusedOrderLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RefusedOrderLoadingImplCopyWithImpl<T, $Res>
    extends _$RefusedOrderStateCopyWithImpl<T, $Res,
        _$RefusedOrderLoadingImpl<T>>
    implements _$$RefusedOrderLoadingImplCopyWith<T, $Res> {
  __$$RefusedOrderLoadingImplCopyWithImpl(_$RefusedOrderLoadingImpl<T> _value,
      $Res Function(_$RefusedOrderLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RefusedOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefusedOrderLoadingImpl<T> implements RefusedOrderLoading<T> {
  _$RefusedOrderLoadingImpl();

  @override
  String toString() {
    return 'RefusedOrderState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefusedOrderLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(RefusedOrderResponse ordersResponse) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(RefusedOrderResponse ordersResponse)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(RefusedOrderResponse ordersResponse)? success,
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
    required TResult Function(RefusedOrderInitial<T> value) initial,
    required TResult Function(RefusedOrderLoading<T> value) loading,
    required TResult Function(RefusedOrderFailure<T> value) failure,
    required TResult Function(RefusedOrderSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefusedOrderInitial<T> value)? initial,
    TResult? Function(RefusedOrderLoading<T> value)? loading,
    TResult? Function(RefusedOrderFailure<T> value)? failure,
    TResult? Function(RefusedOrderSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefusedOrderInitial<T> value)? initial,
    TResult Function(RefusedOrderLoading<T> value)? loading,
    TResult Function(RefusedOrderFailure<T> value)? failure,
    TResult Function(RefusedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RefusedOrderLoading<T> implements RefusedOrderState<T> {
  factory RefusedOrderLoading() = _$RefusedOrderLoadingImpl<T>;
}

/// @nodoc
abstract class _$$RefusedOrderFailureImplCopyWith<T, $Res> {
  factory _$$RefusedOrderFailureImplCopyWith(_$RefusedOrderFailureImpl<T> value,
          $Res Function(_$RefusedOrderFailureImpl<T>) then) =
      __$$RefusedOrderFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$RefusedOrderFailureImplCopyWithImpl<T, $Res>
    extends _$RefusedOrderStateCopyWithImpl<T, $Res,
        _$RefusedOrderFailureImpl<T>>
    implements _$$RefusedOrderFailureImplCopyWith<T, $Res> {
  __$$RefusedOrderFailureImplCopyWithImpl(_$RefusedOrderFailureImpl<T> _value,
      $Res Function(_$RefusedOrderFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RefusedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$RefusedOrderFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$RefusedOrderFailureImpl<T> implements RefusedOrderFailure<T> {
  _$RefusedOrderFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'RefusedOrderState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefusedOrderFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of RefusedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefusedOrderFailureImplCopyWith<T, _$RefusedOrderFailureImpl<T>>
      get copyWith => __$$RefusedOrderFailureImplCopyWithImpl<T,
          _$RefusedOrderFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(RefusedOrderResponse ordersResponse) success,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(RefusedOrderResponse ordersResponse)? success,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(RefusedOrderResponse ordersResponse)? success,
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
    required TResult Function(RefusedOrderInitial<T> value) initial,
    required TResult Function(RefusedOrderLoading<T> value) loading,
    required TResult Function(RefusedOrderFailure<T> value) failure,
    required TResult Function(RefusedOrderSuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefusedOrderInitial<T> value)? initial,
    TResult? Function(RefusedOrderLoading<T> value)? loading,
    TResult? Function(RefusedOrderFailure<T> value)? failure,
    TResult? Function(RefusedOrderSuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefusedOrderInitial<T> value)? initial,
    TResult Function(RefusedOrderLoading<T> value)? loading,
    TResult Function(RefusedOrderFailure<T> value)? failure,
    TResult Function(RefusedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class RefusedOrderFailure<T> implements RefusedOrderState<T> {
  factory RefusedOrderFailure(final ErrorModel errorMessage) =
      _$RefusedOrderFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of RefusedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefusedOrderFailureImplCopyWith<T, _$RefusedOrderFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefusedOrderSuccessImplCopyWith<T, $Res> {
  factory _$$RefusedOrderSuccessImplCopyWith(_$RefusedOrderSuccessImpl<T> value,
          $Res Function(_$RefusedOrderSuccessImpl<T>) then) =
      __$$RefusedOrderSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({RefusedOrderResponse ordersResponse});
}

/// @nodoc
class __$$RefusedOrderSuccessImplCopyWithImpl<T, $Res>
    extends _$RefusedOrderStateCopyWithImpl<T, $Res,
        _$RefusedOrderSuccessImpl<T>>
    implements _$$RefusedOrderSuccessImplCopyWith<T, $Res> {
  __$$RefusedOrderSuccessImplCopyWithImpl(_$RefusedOrderSuccessImpl<T> _value,
      $Res Function(_$RefusedOrderSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of RefusedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersResponse = null,
  }) {
    return _then(_$RefusedOrderSuccessImpl<T>(
      null == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as RefusedOrderResponse,
    ));
  }
}

/// @nodoc

class _$RefusedOrderSuccessImpl<T> implements RefusedOrderSuccess<T> {
  _$RefusedOrderSuccessImpl(this.ordersResponse);

  @override
  final RefusedOrderResponse ordersResponse;

  @override
  String toString() {
    return 'RefusedOrderState<$T>.success(ordersResponse: $ordersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefusedOrderSuccessImpl<T> &&
            (identical(other.ordersResponse, ordersResponse) ||
                other.ordersResponse == ordersResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersResponse);

  /// Create a copy of RefusedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefusedOrderSuccessImplCopyWith<T, _$RefusedOrderSuccessImpl<T>>
      get copyWith => __$$RefusedOrderSuccessImplCopyWithImpl<T,
          _$RefusedOrderSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(RefusedOrderResponse ordersResponse) success,
  }) {
    return success(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(RefusedOrderResponse ordersResponse)? success,
  }) {
    return success?.call(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(RefusedOrderResponse ordersResponse)? success,
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
    required TResult Function(RefusedOrderInitial<T> value) initial,
    required TResult Function(RefusedOrderLoading<T> value) loading,
    required TResult Function(RefusedOrderFailure<T> value) failure,
    required TResult Function(RefusedOrderSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefusedOrderInitial<T> value)? initial,
    TResult? Function(RefusedOrderLoading<T> value)? loading,
    TResult? Function(RefusedOrderFailure<T> value)? failure,
    TResult? Function(RefusedOrderSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefusedOrderInitial<T> value)? initial,
    TResult Function(RefusedOrderLoading<T> value)? loading,
    TResult Function(RefusedOrderFailure<T> value)? failure,
    TResult Function(RefusedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RefusedOrderSuccess<T> implements RefusedOrderState<T> {
  factory RefusedOrderSuccess(final RefusedOrderResponse ordersResponse) =
      _$RefusedOrderSuccessImpl<T>;

  RefusedOrderResponse get ordersResponse;

  /// Create a copy of RefusedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefusedOrderSuccessImplCopyWith<T, _$RefusedOrderSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
