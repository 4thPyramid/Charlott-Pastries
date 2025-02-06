// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'in_progress_orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InProgressOrdersState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(InProgressOrderResponse ordersResponse) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(InProgressOrderResponse ordersResponse)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(InProgressOrderResponse ordersResponse)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InProgressOrderInitial<T> value) initial,
    required TResult Function(InProgressOrderLoading<T> value) loading,
    required TResult Function(InProgressOrderFailure<T> value) failure,
    required TResult Function(InProgressOrderSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InProgressOrderInitial<T> value)? initial,
    TResult? Function(InProgressOrderLoading<T> value)? loading,
    TResult? Function(InProgressOrderFailure<T> value)? failure,
    TResult? Function(InProgressOrderSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InProgressOrderInitial<T> value)? initial,
    TResult Function(InProgressOrderLoading<T> value)? loading,
    TResult Function(InProgressOrderFailure<T> value)? failure,
    TResult Function(InProgressOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InProgressOrdersStateCopyWith<T, $Res> {
  factory $InProgressOrdersStateCopyWith(InProgressOrdersState<T> value,
          $Res Function(InProgressOrdersState<T>) then) =
      _$InProgressOrdersStateCopyWithImpl<T, $Res, InProgressOrdersState<T>>;
}

/// @nodoc
class _$InProgressOrdersStateCopyWithImpl<T, $Res,
        $Val extends InProgressOrdersState<T>>
    implements $InProgressOrdersStateCopyWith<T, $Res> {
  _$InProgressOrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InProgressOrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InProgressOrderInitialImplCopyWith<T, $Res> {
  factory _$$InProgressOrderInitialImplCopyWith(
          _$InProgressOrderInitialImpl<T> value,
          $Res Function(_$InProgressOrderInitialImpl<T>) then) =
      __$$InProgressOrderInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InProgressOrderInitialImplCopyWithImpl<T, $Res>
    extends _$InProgressOrdersStateCopyWithImpl<T, $Res,
        _$InProgressOrderInitialImpl<T>>
    implements _$$InProgressOrderInitialImplCopyWith<T, $Res> {
  __$$InProgressOrderInitialImplCopyWithImpl(
      _$InProgressOrderInitialImpl<T> _value,
      $Res Function(_$InProgressOrderInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of InProgressOrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InProgressOrderInitialImpl<T> implements InProgressOrderInitial<T> {
  _$InProgressOrderInitialImpl();

  @override
  String toString() {
    return 'InProgressOrdersState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressOrderInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(InProgressOrderResponse ordersResponse) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(InProgressOrderResponse ordersResponse)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(InProgressOrderResponse ordersResponse)? success,
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
    required TResult Function(InProgressOrderInitial<T> value) initial,
    required TResult Function(InProgressOrderLoading<T> value) loading,
    required TResult Function(InProgressOrderFailure<T> value) failure,
    required TResult Function(InProgressOrderSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InProgressOrderInitial<T> value)? initial,
    TResult? Function(InProgressOrderLoading<T> value)? loading,
    TResult? Function(InProgressOrderFailure<T> value)? failure,
    TResult? Function(InProgressOrderSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InProgressOrderInitial<T> value)? initial,
    TResult Function(InProgressOrderLoading<T> value)? loading,
    TResult Function(InProgressOrderFailure<T> value)? failure,
    TResult Function(InProgressOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InProgressOrderInitial<T> implements InProgressOrdersState<T> {
  factory InProgressOrderInitial() = _$InProgressOrderInitialImpl<T>;
}

/// @nodoc
abstract class _$$InProgressOrderLoadingImplCopyWith<T, $Res> {
  factory _$$InProgressOrderLoadingImplCopyWith(
          _$InProgressOrderLoadingImpl<T> value,
          $Res Function(_$InProgressOrderLoadingImpl<T>) then) =
      __$$InProgressOrderLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InProgressOrderLoadingImplCopyWithImpl<T, $Res>
    extends _$InProgressOrdersStateCopyWithImpl<T, $Res,
        _$InProgressOrderLoadingImpl<T>>
    implements _$$InProgressOrderLoadingImplCopyWith<T, $Res> {
  __$$InProgressOrderLoadingImplCopyWithImpl(
      _$InProgressOrderLoadingImpl<T> _value,
      $Res Function(_$InProgressOrderLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of InProgressOrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InProgressOrderLoadingImpl<T> implements InProgressOrderLoading<T> {
  _$InProgressOrderLoadingImpl();

  @override
  String toString() {
    return 'InProgressOrdersState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressOrderLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(InProgressOrderResponse ordersResponse) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(InProgressOrderResponse ordersResponse)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(InProgressOrderResponse ordersResponse)? success,
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
    required TResult Function(InProgressOrderInitial<T> value) initial,
    required TResult Function(InProgressOrderLoading<T> value) loading,
    required TResult Function(InProgressOrderFailure<T> value) failure,
    required TResult Function(InProgressOrderSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InProgressOrderInitial<T> value)? initial,
    TResult? Function(InProgressOrderLoading<T> value)? loading,
    TResult? Function(InProgressOrderFailure<T> value)? failure,
    TResult? Function(InProgressOrderSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InProgressOrderInitial<T> value)? initial,
    TResult Function(InProgressOrderLoading<T> value)? loading,
    TResult Function(InProgressOrderFailure<T> value)? failure,
    TResult Function(InProgressOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class InProgressOrderLoading<T> implements InProgressOrdersState<T> {
  factory InProgressOrderLoading() = _$InProgressOrderLoadingImpl<T>;
}

/// @nodoc
abstract class _$$InProgressOrderFailureImplCopyWith<T, $Res> {
  factory _$$InProgressOrderFailureImplCopyWith(
          _$InProgressOrderFailureImpl<T> value,
          $Res Function(_$InProgressOrderFailureImpl<T>) then) =
      __$$InProgressOrderFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$InProgressOrderFailureImplCopyWithImpl<T, $Res>
    extends _$InProgressOrdersStateCopyWithImpl<T, $Res,
        _$InProgressOrderFailureImpl<T>>
    implements _$$InProgressOrderFailureImplCopyWith<T, $Res> {
  __$$InProgressOrderFailureImplCopyWithImpl(
      _$InProgressOrderFailureImpl<T> _value,
      $Res Function(_$InProgressOrderFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of InProgressOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$InProgressOrderFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$InProgressOrderFailureImpl<T> implements InProgressOrderFailure<T> {
  _$InProgressOrderFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'InProgressOrdersState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressOrderFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of InProgressOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressOrderFailureImplCopyWith<T, _$InProgressOrderFailureImpl<T>>
      get copyWith => __$$InProgressOrderFailureImplCopyWithImpl<T,
          _$InProgressOrderFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(InProgressOrderResponse ordersResponse) success,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(InProgressOrderResponse ordersResponse)? success,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(InProgressOrderResponse ordersResponse)? success,
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
    required TResult Function(InProgressOrderInitial<T> value) initial,
    required TResult Function(InProgressOrderLoading<T> value) loading,
    required TResult Function(InProgressOrderFailure<T> value) failure,
    required TResult Function(InProgressOrderSuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InProgressOrderInitial<T> value)? initial,
    TResult? Function(InProgressOrderLoading<T> value)? loading,
    TResult? Function(InProgressOrderFailure<T> value)? failure,
    TResult? Function(InProgressOrderSuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InProgressOrderInitial<T> value)? initial,
    TResult Function(InProgressOrderLoading<T> value)? loading,
    TResult Function(InProgressOrderFailure<T> value)? failure,
    TResult Function(InProgressOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class InProgressOrderFailure<T> implements InProgressOrdersState<T> {
  factory InProgressOrderFailure(final ErrorModel errorMessage) =
      _$InProgressOrderFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of InProgressOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InProgressOrderFailureImplCopyWith<T, _$InProgressOrderFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProgressOrderSuccessImplCopyWith<T, $Res> {
  factory _$$InProgressOrderSuccessImplCopyWith(
          _$InProgressOrderSuccessImpl<T> value,
          $Res Function(_$InProgressOrderSuccessImpl<T>) then) =
      __$$InProgressOrderSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({InProgressOrderResponse ordersResponse});
}

/// @nodoc
class __$$InProgressOrderSuccessImplCopyWithImpl<T, $Res>
    extends _$InProgressOrdersStateCopyWithImpl<T, $Res,
        _$InProgressOrderSuccessImpl<T>>
    implements _$$InProgressOrderSuccessImplCopyWith<T, $Res> {
  __$$InProgressOrderSuccessImplCopyWithImpl(
      _$InProgressOrderSuccessImpl<T> _value,
      $Res Function(_$InProgressOrderSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of InProgressOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersResponse = null,
  }) {
    return _then(_$InProgressOrderSuccessImpl<T>(
      null == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as InProgressOrderResponse,
    ));
  }
}

/// @nodoc

class _$InProgressOrderSuccessImpl<T> implements InProgressOrderSuccess<T> {
  _$InProgressOrderSuccessImpl(this.ordersResponse);

  @override
  final InProgressOrderResponse ordersResponse;

  @override
  String toString() {
    return 'InProgressOrdersState<$T>.success(ordersResponse: $ordersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressOrderSuccessImpl<T> &&
            (identical(other.ordersResponse, ordersResponse) ||
                other.ordersResponse == ordersResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersResponse);

  /// Create a copy of InProgressOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressOrderSuccessImplCopyWith<T, _$InProgressOrderSuccessImpl<T>>
      get copyWith => __$$InProgressOrderSuccessImplCopyWithImpl<T,
          _$InProgressOrderSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(InProgressOrderResponse ordersResponse) success,
  }) {
    return success(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(InProgressOrderResponse ordersResponse)? success,
  }) {
    return success?.call(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(InProgressOrderResponse ordersResponse)? success,
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
    required TResult Function(InProgressOrderInitial<T> value) initial,
    required TResult Function(InProgressOrderLoading<T> value) loading,
    required TResult Function(InProgressOrderFailure<T> value) failure,
    required TResult Function(InProgressOrderSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InProgressOrderInitial<T> value)? initial,
    TResult? Function(InProgressOrderLoading<T> value)? loading,
    TResult? Function(InProgressOrderFailure<T> value)? failure,
    TResult? Function(InProgressOrderSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InProgressOrderInitial<T> value)? initial,
    TResult Function(InProgressOrderLoading<T> value)? loading,
    TResult Function(InProgressOrderFailure<T> value)? failure,
    TResult Function(InProgressOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class InProgressOrderSuccess<T> implements InProgressOrdersState<T> {
  factory InProgressOrderSuccess(final InProgressOrderResponse ordersResponse) =
      _$InProgressOrderSuccessImpl<T>;

  InProgressOrderResponse get ordersResponse;

  /// Create a copy of InProgressOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InProgressOrderSuccessImplCopyWith<T, _$InProgressOrderSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
