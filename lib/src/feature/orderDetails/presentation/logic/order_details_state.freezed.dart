// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderDetailsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(OrderDetailsResponse ordersResponse) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(OrderDetailsResponse ordersResponse)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(OrderDetailsResponse ordersResponse)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderDetailsInitial<T> value) initial,
    required TResult Function(OrderDetailsLoading<T> value) loading,
    required TResult Function(OrderDetailsFailure<T> value) failure,
    required TResult Function(OrderDetailsSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderDetailsInitial<T> value)? initial,
    TResult? Function(OrderDetailsLoading<T> value)? loading,
    TResult? Function(OrderDetailsFailure<T> value)? failure,
    TResult? Function(OrderDetailsSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderDetailsInitial<T> value)? initial,
    TResult Function(OrderDetailsLoading<T> value)? loading,
    TResult Function(OrderDetailsFailure<T> value)? failure,
    TResult Function(OrderDetailsSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsStateCopyWith<T, $Res> {
  factory $OrderDetailsStateCopyWith(OrderDetailsState<T> value,
          $Res Function(OrderDetailsState<T>) then) =
      _$OrderDetailsStateCopyWithImpl<T, $Res, OrderDetailsState<T>>;
}

/// @nodoc
class _$OrderDetailsStateCopyWithImpl<T, $Res,
        $Val extends OrderDetailsState<T>>
    implements $OrderDetailsStateCopyWith<T, $Res> {
  _$OrderDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OrderDetailsInitialImplCopyWith<T, $Res> {
  factory _$$OrderDetailsInitialImplCopyWith(_$OrderDetailsInitialImpl<T> value,
          $Res Function(_$OrderDetailsInitialImpl<T>) then) =
      __$$OrderDetailsInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$OrderDetailsInitialImplCopyWithImpl<T, $Res>
    extends _$OrderDetailsStateCopyWithImpl<T, $Res,
        _$OrderDetailsInitialImpl<T>>
    implements _$$OrderDetailsInitialImplCopyWith<T, $Res> {
  __$$OrderDetailsInitialImplCopyWithImpl(_$OrderDetailsInitialImpl<T> _value,
      $Res Function(_$OrderDetailsInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrderDetailsInitialImpl<T> implements OrderDetailsInitial<T> {
  _$OrderDetailsInitialImpl();

  @override
  String toString() {
    return 'OrderDetailsState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(OrderDetailsResponse ordersResponse) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(OrderDetailsResponse ordersResponse)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(OrderDetailsResponse ordersResponse)? success,
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
    required TResult Function(OrderDetailsInitial<T> value) initial,
    required TResult Function(OrderDetailsLoading<T> value) loading,
    required TResult Function(OrderDetailsFailure<T> value) failure,
    required TResult Function(OrderDetailsSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderDetailsInitial<T> value)? initial,
    TResult? Function(OrderDetailsLoading<T> value)? loading,
    TResult? Function(OrderDetailsFailure<T> value)? failure,
    TResult? Function(OrderDetailsSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderDetailsInitial<T> value)? initial,
    TResult Function(OrderDetailsLoading<T> value)? loading,
    TResult Function(OrderDetailsFailure<T> value)? failure,
    TResult Function(OrderDetailsSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OrderDetailsInitial<T> implements OrderDetailsState<T> {
  factory OrderDetailsInitial() = _$OrderDetailsInitialImpl<T>;
}

/// @nodoc
abstract class _$$OrderDetailsLoadingImplCopyWith<T, $Res> {
  factory _$$OrderDetailsLoadingImplCopyWith(_$OrderDetailsLoadingImpl<T> value,
          $Res Function(_$OrderDetailsLoadingImpl<T>) then) =
      __$$OrderDetailsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$OrderDetailsLoadingImplCopyWithImpl<T, $Res>
    extends _$OrderDetailsStateCopyWithImpl<T, $Res,
        _$OrderDetailsLoadingImpl<T>>
    implements _$$OrderDetailsLoadingImplCopyWith<T, $Res> {
  __$$OrderDetailsLoadingImplCopyWithImpl(_$OrderDetailsLoadingImpl<T> _value,
      $Res Function(_$OrderDetailsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrderDetailsLoadingImpl<T> implements OrderDetailsLoading<T> {
  _$OrderDetailsLoadingImpl();

  @override
  String toString() {
    return 'OrderDetailsState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(OrderDetailsResponse ordersResponse) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(OrderDetailsResponse ordersResponse)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(OrderDetailsResponse ordersResponse)? success,
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
    required TResult Function(OrderDetailsInitial<T> value) initial,
    required TResult Function(OrderDetailsLoading<T> value) loading,
    required TResult Function(OrderDetailsFailure<T> value) failure,
    required TResult Function(OrderDetailsSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderDetailsInitial<T> value)? initial,
    TResult? Function(OrderDetailsLoading<T> value)? loading,
    TResult? Function(OrderDetailsFailure<T> value)? failure,
    TResult? Function(OrderDetailsSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderDetailsInitial<T> value)? initial,
    TResult Function(OrderDetailsLoading<T> value)? loading,
    TResult Function(OrderDetailsFailure<T> value)? failure,
    TResult Function(OrderDetailsSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class OrderDetailsLoading<T> implements OrderDetailsState<T> {
  factory OrderDetailsLoading() = _$OrderDetailsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$OrderDetailsFailureImplCopyWith<T, $Res> {
  factory _$$OrderDetailsFailureImplCopyWith(_$OrderDetailsFailureImpl<T> value,
          $Res Function(_$OrderDetailsFailureImpl<T>) then) =
      __$$OrderDetailsFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$OrderDetailsFailureImplCopyWithImpl<T, $Res>
    extends _$OrderDetailsStateCopyWithImpl<T, $Res,
        _$OrderDetailsFailureImpl<T>>
    implements _$$OrderDetailsFailureImplCopyWith<T, $Res> {
  __$$OrderDetailsFailureImplCopyWithImpl(_$OrderDetailsFailureImpl<T> _value,
      $Res Function(_$OrderDetailsFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$OrderDetailsFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$OrderDetailsFailureImpl<T> implements OrderDetailsFailure<T> {
  _$OrderDetailsFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'OrderDetailsState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsFailureImplCopyWith<T, _$OrderDetailsFailureImpl<T>>
      get copyWith => __$$OrderDetailsFailureImplCopyWithImpl<T,
          _$OrderDetailsFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(OrderDetailsResponse ordersResponse) success,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(OrderDetailsResponse ordersResponse)? success,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(OrderDetailsResponse ordersResponse)? success,
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
    required TResult Function(OrderDetailsInitial<T> value) initial,
    required TResult Function(OrderDetailsLoading<T> value) loading,
    required TResult Function(OrderDetailsFailure<T> value) failure,
    required TResult Function(OrderDetailsSuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderDetailsInitial<T> value)? initial,
    TResult? Function(OrderDetailsLoading<T> value)? loading,
    TResult? Function(OrderDetailsFailure<T> value)? failure,
    TResult? Function(OrderDetailsSuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderDetailsInitial<T> value)? initial,
    TResult Function(OrderDetailsLoading<T> value)? loading,
    TResult Function(OrderDetailsFailure<T> value)? failure,
    TResult Function(OrderDetailsSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class OrderDetailsFailure<T> implements OrderDetailsState<T> {
  factory OrderDetailsFailure(final ErrorModel errorMessage) =
      _$OrderDetailsFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsFailureImplCopyWith<T, _$OrderDetailsFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderDetailsSuccessImplCopyWith<T, $Res> {
  factory _$$OrderDetailsSuccessImplCopyWith(_$OrderDetailsSuccessImpl<T> value,
          $Res Function(_$OrderDetailsSuccessImpl<T>) then) =
      __$$OrderDetailsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OrderDetailsResponse ordersResponse});
}

/// @nodoc
class __$$OrderDetailsSuccessImplCopyWithImpl<T, $Res>
    extends _$OrderDetailsStateCopyWithImpl<T, $Res,
        _$OrderDetailsSuccessImpl<T>>
    implements _$$OrderDetailsSuccessImplCopyWith<T, $Res> {
  __$$OrderDetailsSuccessImplCopyWithImpl(_$OrderDetailsSuccessImpl<T> _value,
      $Res Function(_$OrderDetailsSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersResponse = null,
  }) {
    return _then(_$OrderDetailsSuccessImpl<T>(
      null == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as OrderDetailsResponse,
    ));
  }
}

/// @nodoc

class _$OrderDetailsSuccessImpl<T> implements OrderDetailsSuccess<T> {
  _$OrderDetailsSuccessImpl(this.ordersResponse);

  @override
  final OrderDetailsResponse ordersResponse;

  @override
  String toString() {
    return 'OrderDetailsState<$T>.success(ordersResponse: $ordersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsSuccessImpl<T> &&
            (identical(other.ordersResponse, ordersResponse) ||
                other.ordersResponse == ordersResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersResponse);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsSuccessImplCopyWith<T, _$OrderDetailsSuccessImpl<T>>
      get copyWith => __$$OrderDetailsSuccessImplCopyWithImpl<T,
          _$OrderDetailsSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(OrderDetailsResponse ordersResponse) success,
  }) {
    return success(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(OrderDetailsResponse ordersResponse)? success,
  }) {
    return success?.call(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(OrderDetailsResponse ordersResponse)? success,
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
    required TResult Function(OrderDetailsInitial<T> value) initial,
    required TResult Function(OrderDetailsLoading<T> value) loading,
    required TResult Function(OrderDetailsFailure<T> value) failure,
    required TResult Function(OrderDetailsSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderDetailsInitial<T> value)? initial,
    TResult? Function(OrderDetailsLoading<T> value)? loading,
    TResult? Function(OrderDetailsFailure<T> value)? failure,
    TResult? Function(OrderDetailsSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderDetailsInitial<T> value)? initial,
    TResult Function(OrderDetailsLoading<T> value)? loading,
    TResult Function(OrderDetailsFailure<T> value)? failure,
    TResult Function(OrderDetailsSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class OrderDetailsSuccess<T> implements OrderDetailsState<T> {
  factory OrderDetailsSuccess(final OrderDetailsResponse ordersResponse) =
      _$OrderDetailsSuccessImpl<T>;

  OrderDetailsResponse get ordersResponse;

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderDetailsSuccessImplCopyWith<T, _$OrderDetailsSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
