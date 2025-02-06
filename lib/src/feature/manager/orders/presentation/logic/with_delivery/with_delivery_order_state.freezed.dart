// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'with_delivery_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WithDeliveryOrderState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(OrdersResponse ordersResponse) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(OrdersResponse ordersResponse)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(OrdersResponse ordersResponse)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WithDeliveryOrderInitial<T> value) initial,
    required TResult Function(WithDeliveryOrderLoading<T> value) loading,
    required TResult Function(WithDeliveryOrderFailure<T> value) failure,
    required TResult Function(WithDeliveryOrderSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WithDeliveryOrderInitial<T> value)? initial,
    TResult? Function(WithDeliveryOrderLoading<T> value)? loading,
    TResult? Function(WithDeliveryOrderFailure<T> value)? failure,
    TResult? Function(WithDeliveryOrderSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WithDeliveryOrderInitial<T> value)? initial,
    TResult Function(WithDeliveryOrderLoading<T> value)? loading,
    TResult Function(WithDeliveryOrderFailure<T> value)? failure,
    TResult Function(WithDeliveryOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithDeliveryOrderStateCopyWith<T, $Res> {
  factory $WithDeliveryOrderStateCopyWith(WithDeliveryOrderState<T> value,
          $Res Function(WithDeliveryOrderState<T>) then) =
      _$WithDeliveryOrderStateCopyWithImpl<T, $Res, WithDeliveryOrderState<T>>;
}

/// @nodoc
class _$WithDeliveryOrderStateCopyWithImpl<T, $Res,
        $Val extends WithDeliveryOrderState<T>>
    implements $WithDeliveryOrderStateCopyWith<T, $Res> {
  _$WithDeliveryOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WithDeliveryOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WithDeliveryOrderInitialImplCopyWith<T, $Res> {
  factory _$$WithDeliveryOrderInitialImplCopyWith(
          _$WithDeliveryOrderInitialImpl<T> value,
          $Res Function(_$WithDeliveryOrderInitialImpl<T>) then) =
      __$$WithDeliveryOrderInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$WithDeliveryOrderInitialImplCopyWithImpl<T, $Res>
    extends _$WithDeliveryOrderStateCopyWithImpl<T, $Res,
        _$WithDeliveryOrderInitialImpl<T>>
    implements _$$WithDeliveryOrderInitialImplCopyWith<T, $Res> {
  __$$WithDeliveryOrderInitialImplCopyWithImpl(
      _$WithDeliveryOrderInitialImpl<T> _value,
      $Res Function(_$WithDeliveryOrderInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of WithDeliveryOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WithDeliveryOrderInitialImpl<T> implements WithDeliveryOrderInitial<T> {
  _$WithDeliveryOrderInitialImpl();

  @override
  String toString() {
    return 'WithDeliveryOrderState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithDeliveryOrderInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(OrdersResponse ordersResponse) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(OrdersResponse ordersResponse)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(OrdersResponse ordersResponse)? success,
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
    required TResult Function(WithDeliveryOrderInitial<T> value) initial,
    required TResult Function(WithDeliveryOrderLoading<T> value) loading,
    required TResult Function(WithDeliveryOrderFailure<T> value) failure,
    required TResult Function(WithDeliveryOrderSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WithDeliveryOrderInitial<T> value)? initial,
    TResult? Function(WithDeliveryOrderLoading<T> value)? loading,
    TResult? Function(WithDeliveryOrderFailure<T> value)? failure,
    TResult? Function(WithDeliveryOrderSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WithDeliveryOrderInitial<T> value)? initial,
    TResult Function(WithDeliveryOrderLoading<T> value)? loading,
    TResult Function(WithDeliveryOrderFailure<T> value)? failure,
    TResult Function(WithDeliveryOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WithDeliveryOrderInitial<T>
    implements WithDeliveryOrderState<T> {
  factory WithDeliveryOrderInitial() = _$WithDeliveryOrderInitialImpl<T>;
}

/// @nodoc
abstract class _$$WithDeliveryOrderLoadingImplCopyWith<T, $Res> {
  factory _$$WithDeliveryOrderLoadingImplCopyWith(
          _$WithDeliveryOrderLoadingImpl<T> value,
          $Res Function(_$WithDeliveryOrderLoadingImpl<T>) then) =
      __$$WithDeliveryOrderLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$WithDeliveryOrderLoadingImplCopyWithImpl<T, $Res>
    extends _$WithDeliveryOrderStateCopyWithImpl<T, $Res,
        _$WithDeliveryOrderLoadingImpl<T>>
    implements _$$WithDeliveryOrderLoadingImplCopyWith<T, $Res> {
  __$$WithDeliveryOrderLoadingImplCopyWithImpl(
      _$WithDeliveryOrderLoadingImpl<T> _value,
      $Res Function(_$WithDeliveryOrderLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of WithDeliveryOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WithDeliveryOrderLoadingImpl<T> implements WithDeliveryOrderLoading<T> {
  _$WithDeliveryOrderLoadingImpl();

  @override
  String toString() {
    return 'WithDeliveryOrderState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithDeliveryOrderLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(OrdersResponse ordersResponse) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(OrdersResponse ordersResponse)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(OrdersResponse ordersResponse)? success,
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
    required TResult Function(WithDeliveryOrderInitial<T> value) initial,
    required TResult Function(WithDeliveryOrderLoading<T> value) loading,
    required TResult Function(WithDeliveryOrderFailure<T> value) failure,
    required TResult Function(WithDeliveryOrderSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WithDeliveryOrderInitial<T> value)? initial,
    TResult? Function(WithDeliveryOrderLoading<T> value)? loading,
    TResult? Function(WithDeliveryOrderFailure<T> value)? failure,
    TResult? Function(WithDeliveryOrderSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WithDeliveryOrderInitial<T> value)? initial,
    TResult Function(WithDeliveryOrderLoading<T> value)? loading,
    TResult Function(WithDeliveryOrderFailure<T> value)? failure,
    TResult Function(WithDeliveryOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WithDeliveryOrderLoading<T>
    implements WithDeliveryOrderState<T> {
  factory WithDeliveryOrderLoading() = _$WithDeliveryOrderLoadingImpl<T>;
}

/// @nodoc
abstract class _$$WithDeliveryOrderFailureImplCopyWith<T, $Res> {
  factory _$$WithDeliveryOrderFailureImplCopyWith(
          _$WithDeliveryOrderFailureImpl<T> value,
          $Res Function(_$WithDeliveryOrderFailureImpl<T>) then) =
      __$$WithDeliveryOrderFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$WithDeliveryOrderFailureImplCopyWithImpl<T, $Res>
    extends _$WithDeliveryOrderStateCopyWithImpl<T, $Res,
        _$WithDeliveryOrderFailureImpl<T>>
    implements _$$WithDeliveryOrderFailureImplCopyWith<T, $Res> {
  __$$WithDeliveryOrderFailureImplCopyWithImpl(
      _$WithDeliveryOrderFailureImpl<T> _value,
      $Res Function(_$WithDeliveryOrderFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of WithDeliveryOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$WithDeliveryOrderFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$WithDeliveryOrderFailureImpl<T> implements WithDeliveryOrderFailure<T> {
  _$WithDeliveryOrderFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'WithDeliveryOrderState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithDeliveryOrderFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of WithDeliveryOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WithDeliveryOrderFailureImplCopyWith<T, _$WithDeliveryOrderFailureImpl<T>>
      get copyWith => __$$WithDeliveryOrderFailureImplCopyWithImpl<T,
          _$WithDeliveryOrderFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(OrdersResponse ordersResponse) success,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(OrdersResponse ordersResponse)? success,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(OrdersResponse ordersResponse)? success,
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
    required TResult Function(WithDeliveryOrderInitial<T> value) initial,
    required TResult Function(WithDeliveryOrderLoading<T> value) loading,
    required TResult Function(WithDeliveryOrderFailure<T> value) failure,
    required TResult Function(WithDeliveryOrderSuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WithDeliveryOrderInitial<T> value)? initial,
    TResult? Function(WithDeliveryOrderLoading<T> value)? loading,
    TResult? Function(WithDeliveryOrderFailure<T> value)? failure,
    TResult? Function(WithDeliveryOrderSuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WithDeliveryOrderInitial<T> value)? initial,
    TResult Function(WithDeliveryOrderLoading<T> value)? loading,
    TResult Function(WithDeliveryOrderFailure<T> value)? failure,
    TResult Function(WithDeliveryOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class WithDeliveryOrderFailure<T>
    implements WithDeliveryOrderState<T> {
  factory WithDeliveryOrderFailure(final ErrorModel errorMessage) =
      _$WithDeliveryOrderFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of WithDeliveryOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WithDeliveryOrderFailureImplCopyWith<T, _$WithDeliveryOrderFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WithDeliveryOrderSuccessImplCopyWith<T, $Res> {
  factory _$$WithDeliveryOrderSuccessImplCopyWith(
          _$WithDeliveryOrderSuccessImpl<T> value,
          $Res Function(_$WithDeliveryOrderSuccessImpl<T>) then) =
      __$$WithDeliveryOrderSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OrdersResponse ordersResponse});
}

/// @nodoc
class __$$WithDeliveryOrderSuccessImplCopyWithImpl<T, $Res>
    extends _$WithDeliveryOrderStateCopyWithImpl<T, $Res,
        _$WithDeliveryOrderSuccessImpl<T>>
    implements _$$WithDeliveryOrderSuccessImplCopyWith<T, $Res> {
  __$$WithDeliveryOrderSuccessImplCopyWithImpl(
      _$WithDeliveryOrderSuccessImpl<T> _value,
      $Res Function(_$WithDeliveryOrderSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of WithDeliveryOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersResponse = null,
  }) {
    return _then(_$WithDeliveryOrderSuccessImpl<T>(
      null == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as OrdersResponse,
    ));
  }
}

/// @nodoc

class _$WithDeliveryOrderSuccessImpl<T> implements WithDeliveryOrderSuccess<T> {
  _$WithDeliveryOrderSuccessImpl(this.ordersResponse);

  @override
  final OrdersResponse ordersResponse;

  @override
  String toString() {
    return 'WithDeliveryOrderState<$T>.success(ordersResponse: $ordersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithDeliveryOrderSuccessImpl<T> &&
            (identical(other.ordersResponse, ordersResponse) ||
                other.ordersResponse == ordersResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersResponse);

  /// Create a copy of WithDeliveryOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WithDeliveryOrderSuccessImplCopyWith<T, _$WithDeliveryOrderSuccessImpl<T>>
      get copyWith => __$$WithDeliveryOrderSuccessImplCopyWithImpl<T,
          _$WithDeliveryOrderSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(OrdersResponse ordersResponse) success,
  }) {
    return success(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(OrdersResponse ordersResponse)? success,
  }) {
    return success?.call(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(OrdersResponse ordersResponse)? success,
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
    required TResult Function(WithDeliveryOrderInitial<T> value) initial,
    required TResult Function(WithDeliveryOrderLoading<T> value) loading,
    required TResult Function(WithDeliveryOrderFailure<T> value) failure,
    required TResult Function(WithDeliveryOrderSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WithDeliveryOrderInitial<T> value)? initial,
    TResult? Function(WithDeliveryOrderLoading<T> value)? loading,
    TResult? Function(WithDeliveryOrderFailure<T> value)? failure,
    TResult? Function(WithDeliveryOrderSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WithDeliveryOrderInitial<T> value)? initial,
    TResult Function(WithDeliveryOrderLoading<T> value)? loading,
    TResult Function(WithDeliveryOrderFailure<T> value)? failure,
    TResult Function(WithDeliveryOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class WithDeliveryOrderSuccess<T>
    implements WithDeliveryOrderState<T> {
  factory WithDeliveryOrderSuccess(final OrdersResponse ordersResponse) =
      _$WithDeliveryOrderSuccessImpl<T>;

  OrdersResponse get ordersResponse;

  /// Create a copy of WithDeliveryOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WithDeliveryOrderSuccessImplCopyWith<T, _$WithDeliveryOrderSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
