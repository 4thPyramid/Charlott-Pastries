// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completed_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompletedOrderState<T> {
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
    required TResult Function(CompletedOrderInitial<T> value) initial,
    required TResult Function(CompletedOrderLoading<T> value) loading,
    required TResult Function(CompletedOrderFailure<T> value) failure,
    required TResult Function(CompletedOrderSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompletedOrderInitial<T> value)? initial,
    TResult? Function(CompletedOrderLoading<T> value)? loading,
    TResult? Function(CompletedOrderFailure<T> value)? failure,
    TResult? Function(CompletedOrderSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletedOrderInitial<T> value)? initial,
    TResult Function(CompletedOrderLoading<T> value)? loading,
    TResult Function(CompletedOrderFailure<T> value)? failure,
    TResult Function(CompletedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedOrderStateCopyWith<T, $Res> {
  factory $CompletedOrderStateCopyWith(CompletedOrderState<T> value,
          $Res Function(CompletedOrderState<T>) then) =
      _$CompletedOrderStateCopyWithImpl<T, $Res, CompletedOrderState<T>>;
}

/// @nodoc
class _$CompletedOrderStateCopyWithImpl<T, $Res,
        $Val extends CompletedOrderState<T>>
    implements $CompletedOrderStateCopyWith<T, $Res> {
  _$CompletedOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletedOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CompletedOrderInitialImplCopyWith<T, $Res> {
  factory _$$CompletedOrderInitialImplCopyWith(
          _$CompletedOrderInitialImpl<T> value,
          $Res Function(_$CompletedOrderInitialImpl<T>) then) =
      __$$CompletedOrderInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CompletedOrderInitialImplCopyWithImpl<T, $Res>
    extends _$CompletedOrderStateCopyWithImpl<T, $Res,
        _$CompletedOrderInitialImpl<T>>
    implements _$$CompletedOrderInitialImplCopyWith<T, $Res> {
  __$$CompletedOrderInitialImplCopyWithImpl(
      _$CompletedOrderInitialImpl<T> _value,
      $Res Function(_$CompletedOrderInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CompletedOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompletedOrderInitialImpl<T> implements CompletedOrderInitial<T> {
  _$CompletedOrderInitialImpl();

  @override
  String toString() {
    return 'CompletedOrderState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedOrderInitialImpl<T>);
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
    required TResult Function(CompletedOrderInitial<T> value) initial,
    required TResult Function(CompletedOrderLoading<T> value) loading,
    required TResult Function(CompletedOrderFailure<T> value) failure,
    required TResult Function(CompletedOrderSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompletedOrderInitial<T> value)? initial,
    TResult? Function(CompletedOrderLoading<T> value)? loading,
    TResult? Function(CompletedOrderFailure<T> value)? failure,
    TResult? Function(CompletedOrderSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletedOrderInitial<T> value)? initial,
    TResult Function(CompletedOrderLoading<T> value)? loading,
    TResult Function(CompletedOrderFailure<T> value)? failure,
    TResult Function(CompletedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CompletedOrderInitial<T> implements CompletedOrderState<T> {
  factory CompletedOrderInitial() = _$CompletedOrderInitialImpl<T>;
}

/// @nodoc
abstract class _$$CompletedOrderLoadingImplCopyWith<T, $Res> {
  factory _$$CompletedOrderLoadingImplCopyWith(
          _$CompletedOrderLoadingImpl<T> value,
          $Res Function(_$CompletedOrderLoadingImpl<T>) then) =
      __$$CompletedOrderLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CompletedOrderLoadingImplCopyWithImpl<T, $Res>
    extends _$CompletedOrderStateCopyWithImpl<T, $Res,
        _$CompletedOrderLoadingImpl<T>>
    implements _$$CompletedOrderLoadingImplCopyWith<T, $Res> {
  __$$CompletedOrderLoadingImplCopyWithImpl(
      _$CompletedOrderLoadingImpl<T> _value,
      $Res Function(_$CompletedOrderLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CompletedOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompletedOrderLoadingImpl<T> implements CompletedOrderLoading<T> {
  _$CompletedOrderLoadingImpl();

  @override
  String toString() {
    return 'CompletedOrderState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedOrderLoadingImpl<T>);
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
    required TResult Function(CompletedOrderInitial<T> value) initial,
    required TResult Function(CompletedOrderLoading<T> value) loading,
    required TResult Function(CompletedOrderFailure<T> value) failure,
    required TResult Function(CompletedOrderSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompletedOrderInitial<T> value)? initial,
    TResult? Function(CompletedOrderLoading<T> value)? loading,
    TResult? Function(CompletedOrderFailure<T> value)? failure,
    TResult? Function(CompletedOrderSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletedOrderInitial<T> value)? initial,
    TResult Function(CompletedOrderLoading<T> value)? loading,
    TResult Function(CompletedOrderFailure<T> value)? failure,
    TResult Function(CompletedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CompletedOrderLoading<T> implements CompletedOrderState<T> {
  factory CompletedOrderLoading() = _$CompletedOrderLoadingImpl<T>;
}

/// @nodoc
abstract class _$$CompletedOrderFailureImplCopyWith<T, $Res> {
  factory _$$CompletedOrderFailureImplCopyWith(
          _$CompletedOrderFailureImpl<T> value,
          $Res Function(_$CompletedOrderFailureImpl<T>) then) =
      __$$CompletedOrderFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$CompletedOrderFailureImplCopyWithImpl<T, $Res>
    extends _$CompletedOrderStateCopyWithImpl<T, $Res,
        _$CompletedOrderFailureImpl<T>>
    implements _$$CompletedOrderFailureImplCopyWith<T, $Res> {
  __$$CompletedOrderFailureImplCopyWithImpl(
      _$CompletedOrderFailureImpl<T> _value,
      $Res Function(_$CompletedOrderFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CompletedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CompletedOrderFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$CompletedOrderFailureImpl<T> implements CompletedOrderFailure<T> {
  _$CompletedOrderFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'CompletedOrderState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedOrderFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of CompletedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedOrderFailureImplCopyWith<T, _$CompletedOrderFailureImpl<T>>
      get copyWith => __$$CompletedOrderFailureImplCopyWithImpl<T,
          _$CompletedOrderFailureImpl<T>>(this, _$identity);

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
    required TResult Function(CompletedOrderInitial<T> value) initial,
    required TResult Function(CompletedOrderLoading<T> value) loading,
    required TResult Function(CompletedOrderFailure<T> value) failure,
    required TResult Function(CompletedOrderSuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompletedOrderInitial<T> value)? initial,
    TResult? Function(CompletedOrderLoading<T> value)? loading,
    TResult? Function(CompletedOrderFailure<T> value)? failure,
    TResult? Function(CompletedOrderSuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletedOrderInitial<T> value)? initial,
    TResult Function(CompletedOrderLoading<T> value)? loading,
    TResult Function(CompletedOrderFailure<T> value)? failure,
    TResult Function(CompletedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CompletedOrderFailure<T> implements CompletedOrderState<T> {
  factory CompletedOrderFailure(final ErrorModel errorMessage) =
      _$CompletedOrderFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of CompletedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedOrderFailureImplCopyWith<T, _$CompletedOrderFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletedOrderSuccessImplCopyWith<T, $Res> {
  factory _$$CompletedOrderSuccessImplCopyWith(
          _$CompletedOrderSuccessImpl<T> value,
          $Res Function(_$CompletedOrderSuccessImpl<T>) then) =
      __$$CompletedOrderSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OrdersResponse ordersResponse});
}

/// @nodoc
class __$$CompletedOrderSuccessImplCopyWithImpl<T, $Res>
    extends _$CompletedOrderStateCopyWithImpl<T, $Res,
        _$CompletedOrderSuccessImpl<T>>
    implements _$$CompletedOrderSuccessImplCopyWith<T, $Res> {
  __$$CompletedOrderSuccessImplCopyWithImpl(
      _$CompletedOrderSuccessImpl<T> _value,
      $Res Function(_$CompletedOrderSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CompletedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersResponse = null,
  }) {
    return _then(_$CompletedOrderSuccessImpl<T>(
      null == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as OrdersResponse,
    ));
  }
}

/// @nodoc

class _$CompletedOrderSuccessImpl<T> implements CompletedOrderSuccess<T> {
  _$CompletedOrderSuccessImpl(this.ordersResponse);

  @override
  final OrdersResponse ordersResponse;

  @override
  String toString() {
    return 'CompletedOrderState<$T>.success(ordersResponse: $ordersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedOrderSuccessImpl<T> &&
            (identical(other.ordersResponse, ordersResponse) ||
                other.ordersResponse == ordersResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersResponse);

  /// Create a copy of CompletedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedOrderSuccessImplCopyWith<T, _$CompletedOrderSuccessImpl<T>>
      get copyWith => __$$CompletedOrderSuccessImplCopyWithImpl<T,
          _$CompletedOrderSuccessImpl<T>>(this, _$identity);

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
    required TResult Function(CompletedOrderInitial<T> value) initial,
    required TResult Function(CompletedOrderLoading<T> value) loading,
    required TResult Function(CompletedOrderFailure<T> value) failure,
    required TResult Function(CompletedOrderSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompletedOrderInitial<T> value)? initial,
    TResult? Function(CompletedOrderLoading<T> value)? loading,
    TResult? Function(CompletedOrderFailure<T> value)? failure,
    TResult? Function(CompletedOrderSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompletedOrderInitial<T> value)? initial,
    TResult Function(CompletedOrderLoading<T> value)? loading,
    TResult Function(CompletedOrderFailure<T> value)? failure,
    TResult Function(CompletedOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CompletedOrderSuccess<T> implements CompletedOrderState<T> {
  factory CompletedOrderSuccess(final OrdersResponse ordersResponse) =
      _$CompletedOrderSuccessImpl<T>;

  OrdersResponse get ordersResponse;

  /// Create a copy of CompletedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedOrderSuccessImplCopyWith<T, _$CompletedOrderSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
