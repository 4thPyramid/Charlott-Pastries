// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'returned_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReturnedOrderState<T> {
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
    required TResult Function(ReturnedOrderInitial<T> value) initial,
    required TResult Function(ReturnedOrderLoading<T> value) loading,
    required TResult Function(ReturnedOrderFailure<T> value) failure,
    required TResult Function(ReturnedOrderSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReturnedOrderInitial<T> value)? initial,
    TResult? Function(ReturnedOrderLoading<T> value)? loading,
    TResult? Function(ReturnedOrderFailure<T> value)? failure,
    TResult? Function(ReturnedOrderSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReturnedOrderInitial<T> value)? initial,
    TResult Function(ReturnedOrderLoading<T> value)? loading,
    TResult Function(ReturnedOrderFailure<T> value)? failure,
    TResult Function(ReturnedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnedOrderStateCopyWith<T, $Res> {
  factory $ReturnedOrderStateCopyWith(ReturnedOrderState<T> value,
          $Res Function(ReturnedOrderState<T>) then) =
      _$ReturnedOrderStateCopyWithImpl<T, $Res, ReturnedOrderState<T>>;
}

/// @nodoc
class _$ReturnedOrderStateCopyWithImpl<T, $Res,
        $Val extends ReturnedOrderState<T>>
    implements $ReturnedOrderStateCopyWith<T, $Res> {
  _$ReturnedOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReturnedOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ReturnedOrderInitialImplCopyWith<T, $Res> {
  factory _$$ReturnedOrderInitialImplCopyWith(
          _$ReturnedOrderInitialImpl<T> value,
          $Res Function(_$ReturnedOrderInitialImpl<T>) then) =
      __$$ReturnedOrderInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ReturnedOrderInitialImplCopyWithImpl<T, $Res>
    extends _$ReturnedOrderStateCopyWithImpl<T, $Res,
        _$ReturnedOrderInitialImpl<T>>
    implements _$$ReturnedOrderInitialImplCopyWith<T, $Res> {
  __$$ReturnedOrderInitialImplCopyWithImpl(_$ReturnedOrderInitialImpl<T> _value,
      $Res Function(_$ReturnedOrderInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ReturnedOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReturnedOrderInitialImpl<T> implements ReturnedOrderInitial<T> {
  _$ReturnedOrderInitialImpl();

  @override
  String toString() {
    return 'ReturnedOrderState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnedOrderInitialImpl<T>);
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
    required TResult Function(ReturnedOrderInitial<T> value) initial,
    required TResult Function(ReturnedOrderLoading<T> value) loading,
    required TResult Function(ReturnedOrderFailure<T> value) failure,
    required TResult Function(ReturnedOrderSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReturnedOrderInitial<T> value)? initial,
    TResult? Function(ReturnedOrderLoading<T> value)? loading,
    TResult? Function(ReturnedOrderFailure<T> value)? failure,
    TResult? Function(ReturnedOrderSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReturnedOrderInitial<T> value)? initial,
    TResult Function(ReturnedOrderLoading<T> value)? loading,
    TResult Function(ReturnedOrderFailure<T> value)? failure,
    TResult Function(ReturnedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ReturnedOrderInitial<T> implements ReturnedOrderState<T> {
  factory ReturnedOrderInitial() = _$ReturnedOrderInitialImpl<T>;
}

/// @nodoc
abstract class _$$ReturnedOrderLoadingImplCopyWith<T, $Res> {
  factory _$$ReturnedOrderLoadingImplCopyWith(
          _$ReturnedOrderLoadingImpl<T> value,
          $Res Function(_$ReturnedOrderLoadingImpl<T>) then) =
      __$$ReturnedOrderLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ReturnedOrderLoadingImplCopyWithImpl<T, $Res>
    extends _$ReturnedOrderStateCopyWithImpl<T, $Res,
        _$ReturnedOrderLoadingImpl<T>>
    implements _$$ReturnedOrderLoadingImplCopyWith<T, $Res> {
  __$$ReturnedOrderLoadingImplCopyWithImpl(_$ReturnedOrderLoadingImpl<T> _value,
      $Res Function(_$ReturnedOrderLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ReturnedOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReturnedOrderLoadingImpl<T> implements ReturnedOrderLoading<T> {
  _$ReturnedOrderLoadingImpl();

  @override
  String toString() {
    return 'ReturnedOrderState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnedOrderLoadingImpl<T>);
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
    required TResult Function(ReturnedOrderInitial<T> value) initial,
    required TResult Function(ReturnedOrderLoading<T> value) loading,
    required TResult Function(ReturnedOrderFailure<T> value) failure,
    required TResult Function(ReturnedOrderSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReturnedOrderInitial<T> value)? initial,
    TResult? Function(ReturnedOrderLoading<T> value)? loading,
    TResult? Function(ReturnedOrderFailure<T> value)? failure,
    TResult? Function(ReturnedOrderSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReturnedOrderInitial<T> value)? initial,
    TResult Function(ReturnedOrderLoading<T> value)? loading,
    TResult Function(ReturnedOrderFailure<T> value)? failure,
    TResult Function(ReturnedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ReturnedOrderLoading<T> implements ReturnedOrderState<T> {
  factory ReturnedOrderLoading() = _$ReturnedOrderLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ReturnedOrderFailureImplCopyWith<T, $Res> {
  factory _$$ReturnedOrderFailureImplCopyWith(
          _$ReturnedOrderFailureImpl<T> value,
          $Res Function(_$ReturnedOrderFailureImpl<T>) then) =
      __$$ReturnedOrderFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$ReturnedOrderFailureImplCopyWithImpl<T, $Res>
    extends _$ReturnedOrderStateCopyWithImpl<T, $Res,
        _$ReturnedOrderFailureImpl<T>>
    implements _$$ReturnedOrderFailureImplCopyWith<T, $Res> {
  __$$ReturnedOrderFailureImplCopyWithImpl(_$ReturnedOrderFailureImpl<T> _value,
      $Res Function(_$ReturnedOrderFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ReturnedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ReturnedOrderFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$ReturnedOrderFailureImpl<T> implements ReturnedOrderFailure<T> {
  _$ReturnedOrderFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'ReturnedOrderState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnedOrderFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ReturnedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnedOrderFailureImplCopyWith<T, _$ReturnedOrderFailureImpl<T>>
      get copyWith => __$$ReturnedOrderFailureImplCopyWithImpl<T,
          _$ReturnedOrderFailureImpl<T>>(this, _$identity);

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
    required TResult Function(ReturnedOrderInitial<T> value) initial,
    required TResult Function(ReturnedOrderLoading<T> value) loading,
    required TResult Function(ReturnedOrderFailure<T> value) failure,
    required TResult Function(ReturnedOrderSuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReturnedOrderInitial<T> value)? initial,
    TResult? Function(ReturnedOrderLoading<T> value)? loading,
    TResult? Function(ReturnedOrderFailure<T> value)? failure,
    TResult? Function(ReturnedOrderSuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReturnedOrderInitial<T> value)? initial,
    TResult Function(ReturnedOrderLoading<T> value)? loading,
    TResult Function(ReturnedOrderFailure<T> value)? failure,
    TResult Function(ReturnedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ReturnedOrderFailure<T> implements ReturnedOrderState<T> {
  factory ReturnedOrderFailure(final ErrorModel errorMessage) =
      _$ReturnedOrderFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of ReturnedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReturnedOrderFailureImplCopyWith<T, _$ReturnedOrderFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReturnedOrderSuccessImplCopyWith<T, $Res> {
  factory _$$ReturnedOrderSuccessImplCopyWith(
          _$ReturnedOrderSuccessImpl<T> value,
          $Res Function(_$ReturnedOrderSuccessImpl<T>) then) =
      __$$ReturnedOrderSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OrdersResponse ordersResponse});
}

/// @nodoc
class __$$ReturnedOrderSuccessImplCopyWithImpl<T, $Res>
    extends _$ReturnedOrderStateCopyWithImpl<T, $Res,
        _$ReturnedOrderSuccessImpl<T>>
    implements _$$ReturnedOrderSuccessImplCopyWith<T, $Res> {
  __$$ReturnedOrderSuccessImplCopyWithImpl(_$ReturnedOrderSuccessImpl<T> _value,
      $Res Function(_$ReturnedOrderSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ReturnedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersResponse = null,
  }) {
    return _then(_$ReturnedOrderSuccessImpl<T>(
      null == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as OrdersResponse,
    ));
  }
}

/// @nodoc

class _$ReturnedOrderSuccessImpl<T> implements ReturnedOrderSuccess<T> {
  _$ReturnedOrderSuccessImpl(this.ordersResponse);

  @override
  final OrdersResponse ordersResponse;

  @override
  String toString() {
    return 'ReturnedOrderState<$T>.success(ordersResponse: $ordersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnedOrderSuccessImpl<T> &&
            (identical(other.ordersResponse, ordersResponse) ||
                other.ordersResponse == ordersResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersResponse);

  /// Create a copy of ReturnedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnedOrderSuccessImplCopyWith<T, _$ReturnedOrderSuccessImpl<T>>
      get copyWith => __$$ReturnedOrderSuccessImplCopyWithImpl<T,
          _$ReturnedOrderSuccessImpl<T>>(this, _$identity);

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
    required TResult Function(ReturnedOrderInitial<T> value) initial,
    required TResult Function(ReturnedOrderLoading<T> value) loading,
    required TResult Function(ReturnedOrderFailure<T> value) failure,
    required TResult Function(ReturnedOrderSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReturnedOrderInitial<T> value)? initial,
    TResult? Function(ReturnedOrderLoading<T> value)? loading,
    TResult? Function(ReturnedOrderFailure<T> value)? failure,
    TResult? Function(ReturnedOrderSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReturnedOrderInitial<T> value)? initial,
    TResult Function(ReturnedOrderLoading<T> value)? loading,
    TResult Function(ReturnedOrderFailure<T> value)? failure,
    TResult Function(ReturnedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ReturnedOrderSuccess<T> implements ReturnedOrderState<T> {
  factory ReturnedOrderSuccess(final OrdersResponse ordersResponse) =
      _$ReturnedOrderSuccessImpl<T>;

  OrdersResponse get ordersResponse;

  /// Create a copy of ReturnedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReturnedOrderSuccessImplCopyWith<T, _$ReturnedOrderSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
