// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivered_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveredOrderState<T> {
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
    required TResult Function(DeliveredOrderInitial<T> value) initial,
    required TResult Function(DeliveredOrderLoading<T> value) loading,
    required TResult Function(DeliveredOrderFailure<T> value) failure,
    required TResult Function(DeliveredOrderSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliveredOrderInitial<T> value)? initial,
    TResult? Function(DeliveredOrderLoading<T> value)? loading,
    TResult? Function(DeliveredOrderFailure<T> value)? failure,
    TResult? Function(DeliveredOrderSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveredOrderInitial<T> value)? initial,
    TResult Function(DeliveredOrderLoading<T> value)? loading,
    TResult Function(DeliveredOrderFailure<T> value)? failure,
    TResult Function(DeliveredOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveredOrderStateCopyWith<T, $Res> {
  factory $DeliveredOrderStateCopyWith(DeliveredOrderState<T> value,
          $Res Function(DeliveredOrderState<T>) then) =
      _$DeliveredOrderStateCopyWithImpl<T, $Res, DeliveredOrderState<T>>;
}

/// @nodoc
class _$DeliveredOrderStateCopyWithImpl<T, $Res,
        $Val extends DeliveredOrderState<T>>
    implements $DeliveredOrderStateCopyWith<T, $Res> {
  _$DeliveredOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveredOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DeliveredOrderInitialImplCopyWith<T, $Res> {
  factory _$$DeliveredOrderInitialImplCopyWith(
          _$DeliveredOrderInitialImpl<T> value,
          $Res Function(_$DeliveredOrderInitialImpl<T>) then) =
      __$$DeliveredOrderInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DeliveredOrderInitialImplCopyWithImpl<T, $Res>
    extends _$DeliveredOrderStateCopyWithImpl<T, $Res,
        _$DeliveredOrderInitialImpl<T>>
    implements _$$DeliveredOrderInitialImplCopyWith<T, $Res> {
  __$$DeliveredOrderInitialImplCopyWithImpl(
      _$DeliveredOrderInitialImpl<T> _value,
      $Res Function(_$DeliveredOrderInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DeliveredOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeliveredOrderInitialImpl<T> implements DeliveredOrderInitial<T> {
  _$DeliveredOrderInitialImpl();

  @override
  String toString() {
    return 'DeliveredOrderState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveredOrderInitialImpl<T>);
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
    required TResult Function(DeliveredOrderInitial<T> value) initial,
    required TResult Function(DeliveredOrderLoading<T> value) loading,
    required TResult Function(DeliveredOrderFailure<T> value) failure,
    required TResult Function(DeliveredOrderSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliveredOrderInitial<T> value)? initial,
    TResult? Function(DeliveredOrderLoading<T> value)? loading,
    TResult? Function(DeliveredOrderFailure<T> value)? failure,
    TResult? Function(DeliveredOrderSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveredOrderInitial<T> value)? initial,
    TResult Function(DeliveredOrderLoading<T> value)? loading,
    TResult Function(DeliveredOrderFailure<T> value)? failure,
    TResult Function(DeliveredOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DeliveredOrderInitial<T> implements DeliveredOrderState<T> {
  factory DeliveredOrderInitial() = _$DeliveredOrderInitialImpl<T>;
}

/// @nodoc
abstract class _$$DeliveredOrderLoadingImplCopyWith<T, $Res> {
  factory _$$DeliveredOrderLoadingImplCopyWith(
          _$DeliveredOrderLoadingImpl<T> value,
          $Res Function(_$DeliveredOrderLoadingImpl<T>) then) =
      __$$DeliveredOrderLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DeliveredOrderLoadingImplCopyWithImpl<T, $Res>
    extends _$DeliveredOrderStateCopyWithImpl<T, $Res,
        _$DeliveredOrderLoadingImpl<T>>
    implements _$$DeliveredOrderLoadingImplCopyWith<T, $Res> {
  __$$DeliveredOrderLoadingImplCopyWithImpl(
      _$DeliveredOrderLoadingImpl<T> _value,
      $Res Function(_$DeliveredOrderLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DeliveredOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeliveredOrderLoadingImpl<T> implements DeliveredOrderLoading<T> {
  _$DeliveredOrderLoadingImpl();

  @override
  String toString() {
    return 'DeliveredOrderState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveredOrderLoadingImpl<T>);
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
    required TResult Function(DeliveredOrderInitial<T> value) initial,
    required TResult Function(DeliveredOrderLoading<T> value) loading,
    required TResult Function(DeliveredOrderFailure<T> value) failure,
    required TResult Function(DeliveredOrderSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliveredOrderInitial<T> value)? initial,
    TResult? Function(DeliveredOrderLoading<T> value)? loading,
    TResult? Function(DeliveredOrderFailure<T> value)? failure,
    TResult? Function(DeliveredOrderSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveredOrderInitial<T> value)? initial,
    TResult Function(DeliveredOrderLoading<T> value)? loading,
    TResult Function(DeliveredOrderFailure<T> value)? failure,
    TResult Function(DeliveredOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeliveredOrderLoading<T> implements DeliveredOrderState<T> {
  factory DeliveredOrderLoading() = _$DeliveredOrderLoadingImpl<T>;
}

/// @nodoc
abstract class _$$DeliveredOrderFailureImplCopyWith<T, $Res> {
  factory _$$DeliveredOrderFailureImplCopyWith(
          _$DeliveredOrderFailureImpl<T> value,
          $Res Function(_$DeliveredOrderFailureImpl<T>) then) =
      __$$DeliveredOrderFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$DeliveredOrderFailureImplCopyWithImpl<T, $Res>
    extends _$DeliveredOrderStateCopyWithImpl<T, $Res,
        _$DeliveredOrderFailureImpl<T>>
    implements _$$DeliveredOrderFailureImplCopyWith<T, $Res> {
  __$$DeliveredOrderFailureImplCopyWithImpl(
      _$DeliveredOrderFailureImpl<T> _value,
      $Res Function(_$DeliveredOrderFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DeliveredOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$DeliveredOrderFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$DeliveredOrderFailureImpl<T> implements DeliveredOrderFailure<T> {
  _$DeliveredOrderFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'DeliveredOrderState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveredOrderFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of DeliveredOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveredOrderFailureImplCopyWith<T, _$DeliveredOrderFailureImpl<T>>
      get copyWith => __$$DeliveredOrderFailureImplCopyWithImpl<T,
          _$DeliveredOrderFailureImpl<T>>(this, _$identity);

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
    required TResult Function(DeliveredOrderInitial<T> value) initial,
    required TResult Function(DeliveredOrderLoading<T> value) loading,
    required TResult Function(DeliveredOrderFailure<T> value) failure,
    required TResult Function(DeliveredOrderSuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliveredOrderInitial<T> value)? initial,
    TResult? Function(DeliveredOrderLoading<T> value)? loading,
    TResult? Function(DeliveredOrderFailure<T> value)? failure,
    TResult? Function(DeliveredOrderSuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveredOrderInitial<T> value)? initial,
    TResult Function(DeliveredOrderLoading<T> value)? loading,
    TResult Function(DeliveredOrderFailure<T> value)? failure,
    TResult Function(DeliveredOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DeliveredOrderFailure<T> implements DeliveredOrderState<T> {
  factory DeliveredOrderFailure(final ErrorModel errorMessage) =
      _$DeliveredOrderFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of DeliveredOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveredOrderFailureImplCopyWith<T, _$DeliveredOrderFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeliveredOrderSuccessImplCopyWith<T, $Res> {
  factory _$$DeliveredOrderSuccessImplCopyWith(
          _$DeliveredOrderSuccessImpl<T> value,
          $Res Function(_$DeliveredOrderSuccessImpl<T>) then) =
      __$$DeliveredOrderSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OrdersResponse ordersResponse});
}

/// @nodoc
class __$$DeliveredOrderSuccessImplCopyWithImpl<T, $Res>
    extends _$DeliveredOrderStateCopyWithImpl<T, $Res,
        _$DeliveredOrderSuccessImpl<T>>
    implements _$$DeliveredOrderSuccessImplCopyWith<T, $Res> {
  __$$DeliveredOrderSuccessImplCopyWithImpl(
      _$DeliveredOrderSuccessImpl<T> _value,
      $Res Function(_$DeliveredOrderSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DeliveredOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersResponse = null,
  }) {
    return _then(_$DeliveredOrderSuccessImpl<T>(
      null == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as OrdersResponse,
    ));
  }
}

/// @nodoc

class _$DeliveredOrderSuccessImpl<T> implements DeliveredOrderSuccess<T> {
  _$DeliveredOrderSuccessImpl(this.ordersResponse);

  @override
  final OrdersResponse ordersResponse;

  @override
  String toString() {
    return 'DeliveredOrderState<$T>.success(ordersResponse: $ordersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveredOrderSuccessImpl<T> &&
            (identical(other.ordersResponse, ordersResponse) ||
                other.ordersResponse == ordersResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersResponse);

  /// Create a copy of DeliveredOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveredOrderSuccessImplCopyWith<T, _$DeliveredOrderSuccessImpl<T>>
      get copyWith => __$$DeliveredOrderSuccessImplCopyWithImpl<T,
          _$DeliveredOrderSuccessImpl<T>>(this, _$identity);

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
    required TResult Function(DeliveredOrderInitial<T> value) initial,
    required TResult Function(DeliveredOrderLoading<T> value) loading,
    required TResult Function(DeliveredOrderFailure<T> value) failure,
    required TResult Function(DeliveredOrderSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliveredOrderInitial<T> value)? initial,
    TResult? Function(DeliveredOrderLoading<T> value)? loading,
    TResult? Function(DeliveredOrderFailure<T> value)? failure,
    TResult? Function(DeliveredOrderSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveredOrderInitial<T> value)? initial,
    TResult Function(DeliveredOrderLoading<T> value)? loading,
    TResult Function(DeliveredOrderFailure<T> value)? failure,
    TResult Function(DeliveredOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DeliveredOrderSuccess<T> implements DeliveredOrderState<T> {
  factory DeliveredOrderSuccess(final OrdersResponse ordersResponse) =
      _$DeliveredOrderSuccessImpl<T>;

  OrdersResponse get ordersResponse;

  /// Create a copy of DeliveredOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveredOrderSuccessImplCopyWith<T, _$DeliveredOrderSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
