// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accept_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AcceptOrderState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(AcceptOrderResponse ordersResponse) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(AcceptOrderResponse ordersResponse)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(AcceptOrderResponse ordersResponse)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AcceptOrderInitial<T> value) initial,
    required TResult Function(AcceptOrderLoading<T> value) loading,
    required TResult Function(AcceptOrderFailure<T> value) failure,
    required TResult Function(AcceptOrderSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrderInitial<T> value)? initial,
    TResult? Function(AcceptOrderLoading<T> value)? loading,
    TResult? Function(AcceptOrderFailure<T> value)? failure,
    TResult? Function(AcceptOrderSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrderInitial<T> value)? initial,
    TResult Function(AcceptOrderLoading<T> value)? loading,
    TResult Function(AcceptOrderFailure<T> value)? failure,
    TResult Function(AcceptOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptOrderStateCopyWith<T, $Res> {
  factory $AcceptOrderStateCopyWith(
          AcceptOrderState<T> value, $Res Function(AcceptOrderState<T>) then) =
      _$AcceptOrderStateCopyWithImpl<T, $Res, AcceptOrderState<T>>;
}

/// @nodoc
class _$AcceptOrderStateCopyWithImpl<T, $Res, $Val extends AcceptOrderState<T>>
    implements $AcceptOrderStateCopyWith<T, $Res> {
  _$AcceptOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcceptOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AcceptOrderInitialImplCopyWith<T, $Res> {
  factory _$$AcceptOrderInitialImplCopyWith(_$AcceptOrderInitialImpl<T> value,
          $Res Function(_$AcceptOrderInitialImpl<T>) then) =
      __$$AcceptOrderInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AcceptOrderInitialImplCopyWithImpl<T, $Res>
    extends _$AcceptOrderStateCopyWithImpl<T, $Res, _$AcceptOrderInitialImpl<T>>
    implements _$$AcceptOrderInitialImplCopyWith<T, $Res> {
  __$$AcceptOrderInitialImplCopyWithImpl(_$AcceptOrderInitialImpl<T> _value,
      $Res Function(_$AcceptOrderInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AcceptOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AcceptOrderInitialImpl<T> implements AcceptOrderInitial<T> {
  _$AcceptOrderInitialImpl();

  @override
  String toString() {
    return 'AcceptOrderState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptOrderInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(AcceptOrderResponse ordersResponse) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(AcceptOrderResponse ordersResponse)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(AcceptOrderResponse ordersResponse)? success,
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
    required TResult Function(AcceptOrderInitial<T> value) initial,
    required TResult Function(AcceptOrderLoading<T> value) loading,
    required TResult Function(AcceptOrderFailure<T> value) failure,
    required TResult Function(AcceptOrderSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrderInitial<T> value)? initial,
    TResult? Function(AcceptOrderLoading<T> value)? loading,
    TResult? Function(AcceptOrderFailure<T> value)? failure,
    TResult? Function(AcceptOrderSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrderInitial<T> value)? initial,
    TResult Function(AcceptOrderLoading<T> value)? loading,
    TResult Function(AcceptOrderFailure<T> value)? failure,
    TResult Function(AcceptOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AcceptOrderInitial<T> implements AcceptOrderState<T> {
  factory AcceptOrderInitial() = _$AcceptOrderInitialImpl<T>;
}

/// @nodoc
abstract class _$$AcceptOrderLoadingImplCopyWith<T, $Res> {
  factory _$$AcceptOrderLoadingImplCopyWith(_$AcceptOrderLoadingImpl<T> value,
          $Res Function(_$AcceptOrderLoadingImpl<T>) then) =
      __$$AcceptOrderLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AcceptOrderLoadingImplCopyWithImpl<T, $Res>
    extends _$AcceptOrderStateCopyWithImpl<T, $Res, _$AcceptOrderLoadingImpl<T>>
    implements _$$AcceptOrderLoadingImplCopyWith<T, $Res> {
  __$$AcceptOrderLoadingImplCopyWithImpl(_$AcceptOrderLoadingImpl<T> _value,
      $Res Function(_$AcceptOrderLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AcceptOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AcceptOrderLoadingImpl<T> implements AcceptOrderLoading<T> {
  _$AcceptOrderLoadingImpl();

  @override
  String toString() {
    return 'AcceptOrderState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptOrderLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(AcceptOrderResponse ordersResponse) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(AcceptOrderResponse ordersResponse)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(AcceptOrderResponse ordersResponse)? success,
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
    required TResult Function(AcceptOrderInitial<T> value) initial,
    required TResult Function(AcceptOrderLoading<T> value) loading,
    required TResult Function(AcceptOrderFailure<T> value) failure,
    required TResult Function(AcceptOrderSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrderInitial<T> value)? initial,
    TResult? Function(AcceptOrderLoading<T> value)? loading,
    TResult? Function(AcceptOrderFailure<T> value)? failure,
    TResult? Function(AcceptOrderSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrderInitial<T> value)? initial,
    TResult Function(AcceptOrderLoading<T> value)? loading,
    TResult Function(AcceptOrderFailure<T> value)? failure,
    TResult Function(AcceptOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AcceptOrderLoading<T> implements AcceptOrderState<T> {
  factory AcceptOrderLoading() = _$AcceptOrderLoadingImpl<T>;
}

/// @nodoc
abstract class _$$AcceptOrderFailureImplCopyWith<T, $Res> {
  factory _$$AcceptOrderFailureImplCopyWith(_$AcceptOrderFailureImpl<T> value,
          $Res Function(_$AcceptOrderFailureImpl<T>) then) =
      __$$AcceptOrderFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$AcceptOrderFailureImplCopyWithImpl<T, $Res>
    extends _$AcceptOrderStateCopyWithImpl<T, $Res, _$AcceptOrderFailureImpl<T>>
    implements _$$AcceptOrderFailureImplCopyWith<T, $Res> {
  __$$AcceptOrderFailureImplCopyWithImpl(_$AcceptOrderFailureImpl<T> _value,
      $Res Function(_$AcceptOrderFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AcceptOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AcceptOrderFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$AcceptOrderFailureImpl<T> implements AcceptOrderFailure<T> {
  _$AcceptOrderFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'AcceptOrderState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptOrderFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AcceptOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptOrderFailureImplCopyWith<T, _$AcceptOrderFailureImpl<T>>
      get copyWith => __$$AcceptOrderFailureImplCopyWithImpl<T,
          _$AcceptOrderFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(AcceptOrderResponse ordersResponse) success,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(AcceptOrderResponse ordersResponse)? success,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(AcceptOrderResponse ordersResponse)? success,
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
    required TResult Function(AcceptOrderInitial<T> value) initial,
    required TResult Function(AcceptOrderLoading<T> value) loading,
    required TResult Function(AcceptOrderFailure<T> value) failure,
    required TResult Function(AcceptOrderSuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrderInitial<T> value)? initial,
    TResult? Function(AcceptOrderLoading<T> value)? loading,
    TResult? Function(AcceptOrderFailure<T> value)? failure,
    TResult? Function(AcceptOrderSuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrderInitial<T> value)? initial,
    TResult Function(AcceptOrderLoading<T> value)? loading,
    TResult Function(AcceptOrderFailure<T> value)? failure,
    TResult Function(AcceptOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AcceptOrderFailure<T> implements AcceptOrderState<T> {
  factory AcceptOrderFailure(final ErrorModel errorMessage) =
      _$AcceptOrderFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of AcceptOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptOrderFailureImplCopyWith<T, _$AcceptOrderFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AcceptOrderSuccessImplCopyWith<T, $Res> {
  factory _$$AcceptOrderSuccessImplCopyWith(_$AcceptOrderSuccessImpl<T> value,
          $Res Function(_$AcceptOrderSuccessImpl<T>) then) =
      __$$AcceptOrderSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({AcceptOrderResponse ordersResponse});
}

/// @nodoc
class __$$AcceptOrderSuccessImplCopyWithImpl<T, $Res>
    extends _$AcceptOrderStateCopyWithImpl<T, $Res, _$AcceptOrderSuccessImpl<T>>
    implements _$$AcceptOrderSuccessImplCopyWith<T, $Res> {
  __$$AcceptOrderSuccessImplCopyWithImpl(_$AcceptOrderSuccessImpl<T> _value,
      $Res Function(_$AcceptOrderSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AcceptOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersResponse = null,
  }) {
    return _then(_$AcceptOrderSuccessImpl<T>(
      null == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as AcceptOrderResponse,
    ));
  }
}

/// @nodoc

class _$AcceptOrderSuccessImpl<T> implements AcceptOrderSuccess<T> {
  _$AcceptOrderSuccessImpl(this.ordersResponse);

  @override
  final AcceptOrderResponse ordersResponse;

  @override
  String toString() {
    return 'AcceptOrderState<$T>.success(ordersResponse: $ordersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptOrderSuccessImpl<T> &&
            (identical(other.ordersResponse, ordersResponse) ||
                other.ordersResponse == ordersResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersResponse);

  /// Create a copy of AcceptOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptOrderSuccessImplCopyWith<T, _$AcceptOrderSuccessImpl<T>>
      get copyWith => __$$AcceptOrderSuccessImplCopyWithImpl<T,
          _$AcceptOrderSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(AcceptOrderResponse ordersResponse) success,
  }) {
    return success(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(AcceptOrderResponse ordersResponse)? success,
  }) {
    return success?.call(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(AcceptOrderResponse ordersResponse)? success,
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
    required TResult Function(AcceptOrderInitial<T> value) initial,
    required TResult Function(AcceptOrderLoading<T> value) loading,
    required TResult Function(AcceptOrderFailure<T> value) failure,
    required TResult Function(AcceptOrderSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AcceptOrderInitial<T> value)? initial,
    TResult? Function(AcceptOrderLoading<T> value)? loading,
    TResult? Function(AcceptOrderFailure<T> value)? failure,
    TResult? Function(AcceptOrderSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AcceptOrderInitial<T> value)? initial,
    TResult Function(AcceptOrderLoading<T> value)? loading,
    TResult Function(AcceptOrderFailure<T> value)? failure,
    TResult Function(AcceptOrderSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AcceptOrderSuccess<T> implements AcceptOrderState<T> {
  factory AcceptOrderSuccess(final AcceptOrderResponse ordersResponse) =
      _$AcceptOrderSuccessImpl<T>;

  AcceptOrderResponse get ordersResponse;

  /// Create a copy of AcceptOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptOrderSuccessImplCopyWith<T, _$AcceptOrderSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
