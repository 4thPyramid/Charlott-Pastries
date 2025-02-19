// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assigned_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssignedOrderState<T> {
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
    required TResult Function(AssignOrderInitial<T> value) initial,
    required TResult Function(AssignOrderLoading<T> value) loading,
    required TResult Function(AssignOrderFailure<T> value) failure,
    required TResult Function(AssignOrderSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssignOrderInitial<T> value)? initial,
    TResult? Function(AssignOrderLoading<T> value)? loading,
    TResult? Function(AssignOrderFailure<T> value)? failure,
    TResult? Function(AssignOrderSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssignOrderInitial<T> value)? initial,
    TResult Function(AssignOrderLoading<T> value)? loading,
    TResult Function(AssignOrderFailure<T> value)? failure,
    TResult Function(AssignOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignedOrderStateCopyWith<T, $Res> {
  factory $AssignedOrderStateCopyWith(AssignedOrderState<T> value,
          $Res Function(AssignedOrderState<T>) then) =
      _$AssignedOrderStateCopyWithImpl<T, $Res, AssignedOrderState<T>>;
}

/// @nodoc
class _$AssignedOrderStateCopyWithImpl<T, $Res,
        $Val extends AssignedOrderState<T>>
    implements $AssignedOrderStateCopyWith<T, $Res> {
  _$AssignedOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssignedOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AssignOrderInitialImplCopyWith<T, $Res> {
  factory _$$AssignOrderInitialImplCopyWith(_$AssignOrderInitialImpl<T> value,
          $Res Function(_$AssignOrderInitialImpl<T>) then) =
      __$$AssignOrderInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AssignOrderInitialImplCopyWithImpl<T, $Res>
    extends _$AssignedOrderStateCopyWithImpl<T, $Res,
        _$AssignOrderInitialImpl<T>>
    implements _$$AssignOrderInitialImplCopyWith<T, $Res> {
  __$$AssignOrderInitialImplCopyWithImpl(_$AssignOrderInitialImpl<T> _value,
      $Res Function(_$AssignOrderInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AssignedOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AssignOrderInitialImpl<T> implements AssignOrderInitial<T> {
  _$AssignOrderInitialImpl();

  @override
  String toString() {
    return 'AssignedOrderState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignOrderInitialImpl<T>);
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
    required TResult Function(AssignOrderInitial<T> value) initial,
    required TResult Function(AssignOrderLoading<T> value) loading,
    required TResult Function(AssignOrderFailure<T> value) failure,
    required TResult Function(AssignOrderSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssignOrderInitial<T> value)? initial,
    TResult? Function(AssignOrderLoading<T> value)? loading,
    TResult? Function(AssignOrderFailure<T> value)? failure,
    TResult? Function(AssignOrderSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssignOrderInitial<T> value)? initial,
    TResult Function(AssignOrderLoading<T> value)? loading,
    TResult Function(AssignOrderFailure<T> value)? failure,
    TResult Function(AssignOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AssignOrderInitial<T> implements AssignedOrderState<T> {
  factory AssignOrderInitial() = _$AssignOrderInitialImpl<T>;
}

/// @nodoc
abstract class _$$AssignOrderLoadingImplCopyWith<T, $Res> {
  factory _$$AssignOrderLoadingImplCopyWith(_$AssignOrderLoadingImpl<T> value,
          $Res Function(_$AssignOrderLoadingImpl<T>) then) =
      __$$AssignOrderLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AssignOrderLoadingImplCopyWithImpl<T, $Res>
    extends _$AssignedOrderStateCopyWithImpl<T, $Res,
        _$AssignOrderLoadingImpl<T>>
    implements _$$AssignOrderLoadingImplCopyWith<T, $Res> {
  __$$AssignOrderLoadingImplCopyWithImpl(_$AssignOrderLoadingImpl<T> _value,
      $Res Function(_$AssignOrderLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AssignedOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AssignOrderLoadingImpl<T> implements AssignOrderLoading<T> {
  _$AssignOrderLoadingImpl();

  @override
  String toString() {
    return 'AssignedOrderState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignOrderLoadingImpl<T>);
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
    required TResult Function(AssignOrderInitial<T> value) initial,
    required TResult Function(AssignOrderLoading<T> value) loading,
    required TResult Function(AssignOrderFailure<T> value) failure,
    required TResult Function(AssignOrderSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssignOrderInitial<T> value)? initial,
    TResult? Function(AssignOrderLoading<T> value)? loading,
    TResult? Function(AssignOrderFailure<T> value)? failure,
    TResult? Function(AssignOrderSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssignOrderInitial<T> value)? initial,
    TResult Function(AssignOrderLoading<T> value)? loading,
    TResult Function(AssignOrderFailure<T> value)? failure,
    TResult Function(AssignOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AssignOrderLoading<T> implements AssignedOrderState<T> {
  factory AssignOrderLoading() = _$AssignOrderLoadingImpl<T>;
}

/// @nodoc
abstract class _$$AssignOrderFailureImplCopyWith<T, $Res> {
  factory _$$AssignOrderFailureImplCopyWith(_$AssignOrderFailureImpl<T> value,
          $Res Function(_$AssignOrderFailureImpl<T>) then) =
      __$$AssignOrderFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$AssignOrderFailureImplCopyWithImpl<T, $Res>
    extends _$AssignedOrderStateCopyWithImpl<T, $Res,
        _$AssignOrderFailureImpl<T>>
    implements _$$AssignOrderFailureImplCopyWith<T, $Res> {
  __$$AssignOrderFailureImplCopyWithImpl(_$AssignOrderFailureImpl<T> _value,
      $Res Function(_$AssignOrderFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AssignedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AssignOrderFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$AssignOrderFailureImpl<T> implements AssignOrderFailure<T> {
  _$AssignOrderFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'AssignedOrderState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignOrderFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AssignedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignOrderFailureImplCopyWith<T, _$AssignOrderFailureImpl<T>>
      get copyWith => __$$AssignOrderFailureImplCopyWithImpl<T,
          _$AssignOrderFailureImpl<T>>(this, _$identity);

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
    required TResult Function(AssignOrderInitial<T> value) initial,
    required TResult Function(AssignOrderLoading<T> value) loading,
    required TResult Function(AssignOrderFailure<T> value) failure,
    required TResult Function(AssignOrderSuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssignOrderInitial<T> value)? initial,
    TResult? Function(AssignOrderLoading<T> value)? loading,
    TResult? Function(AssignOrderFailure<T> value)? failure,
    TResult? Function(AssignOrderSuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssignOrderInitial<T> value)? initial,
    TResult Function(AssignOrderLoading<T> value)? loading,
    TResult Function(AssignOrderFailure<T> value)? failure,
    TResult Function(AssignOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AssignOrderFailure<T> implements AssignedOrderState<T> {
  factory AssignOrderFailure(final ErrorModel errorMessage) =
      _$AssignOrderFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of AssignedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignOrderFailureImplCopyWith<T, _$AssignOrderFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignOrderSuccessImplCopyWith<T, $Res> {
  factory _$$AssignOrderSuccessImplCopyWith(_$AssignOrderSuccessImpl<T> value,
          $Res Function(_$AssignOrderSuccessImpl<T>) then) =
      __$$AssignOrderSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OrdersResponse ordersResponse});
}

/// @nodoc
class __$$AssignOrderSuccessImplCopyWithImpl<T, $Res>
    extends _$AssignedOrderStateCopyWithImpl<T, $Res,
        _$AssignOrderSuccessImpl<T>>
    implements _$$AssignOrderSuccessImplCopyWith<T, $Res> {
  __$$AssignOrderSuccessImplCopyWithImpl(_$AssignOrderSuccessImpl<T> _value,
      $Res Function(_$AssignOrderSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AssignedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersResponse = null,
  }) {
    return _then(_$AssignOrderSuccessImpl<T>(
      null == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as OrdersResponse,
    ));
  }
}

/// @nodoc

class _$AssignOrderSuccessImpl<T> implements AssignOrderSuccess<T> {
  _$AssignOrderSuccessImpl(this.ordersResponse);

  @override
  final OrdersResponse ordersResponse;

  @override
  String toString() {
    return 'AssignedOrderState<$T>.success(ordersResponse: $ordersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignOrderSuccessImpl<T> &&
            (identical(other.ordersResponse, ordersResponse) ||
                other.ordersResponse == ordersResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersResponse);

  /// Create a copy of AssignedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignOrderSuccessImplCopyWith<T, _$AssignOrderSuccessImpl<T>>
      get copyWith => __$$AssignOrderSuccessImplCopyWithImpl<T,
          _$AssignOrderSuccessImpl<T>>(this, _$identity);

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
    required TResult Function(AssignOrderInitial<T> value) initial,
    required TResult Function(AssignOrderLoading<T> value) loading,
    required TResult Function(AssignOrderFailure<T> value) failure,
    required TResult Function(AssignOrderSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssignOrderInitial<T> value)? initial,
    TResult? Function(AssignOrderLoading<T> value)? loading,
    TResult? Function(AssignOrderFailure<T> value)? failure,
    TResult? Function(AssignOrderSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssignOrderInitial<T> value)? initial,
    TResult Function(AssignOrderLoading<T> value)? loading,
    TResult Function(AssignOrderFailure<T> value)? failure,
    TResult Function(AssignOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AssignOrderSuccess<T> implements AssignedOrderState<T> {
  factory AssignOrderSuccess(final OrdersResponse ordersResponse) =
      _$AssignOrderSuccessImpl<T>;

  OrdersResponse get ordersResponse;

  /// Create a copy of AssignedOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignOrderSuccessImplCopyWith<T, _$AssignOrderSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
