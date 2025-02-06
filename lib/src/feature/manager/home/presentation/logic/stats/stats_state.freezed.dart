// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StatsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(StatsResponse ordersResponse) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(StatsResponse ordersResponse)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(StatsResponse ordersResponse)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StatsInitial<T> value) initial,
    required TResult Function(StatsLoading<T> value) loading,
    required TResult Function(StatsFailure<T> value) failure,
    required TResult Function(StatsSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsInitial<T> value)? initial,
    TResult? Function(StatsLoading<T> value)? loading,
    TResult? Function(StatsFailure<T> value)? failure,
    TResult? Function(StatsSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsInitial<T> value)? initial,
    TResult Function(StatsLoading<T> value)? loading,
    TResult Function(StatsFailure<T> value)? failure,
    TResult Function(StatsSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsStateCopyWith<T, $Res> {
  factory $StatsStateCopyWith(
          StatsState<T> value, $Res Function(StatsState<T>) then) =
      _$StatsStateCopyWithImpl<T, $Res, StatsState<T>>;
}

/// @nodoc
class _$StatsStateCopyWithImpl<T, $Res, $Val extends StatsState<T>>
    implements $StatsStateCopyWith<T, $Res> {
  _$StatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StatsInitialImplCopyWith<T, $Res> {
  factory _$$StatsInitialImplCopyWith(_$StatsInitialImpl<T> value,
          $Res Function(_$StatsInitialImpl<T>) then) =
      __$$StatsInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$StatsInitialImplCopyWithImpl<T, $Res>
    extends _$StatsStateCopyWithImpl<T, $Res, _$StatsInitialImpl<T>>
    implements _$$StatsInitialImplCopyWith<T, $Res> {
  __$$StatsInitialImplCopyWithImpl(
      _$StatsInitialImpl<T> _value, $Res Function(_$StatsInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StatsInitialImpl<T> implements StatsInitial<T> {
  _$StatsInitialImpl();

  @override
  String toString() {
    return 'StatsState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatsInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(StatsResponse ordersResponse) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(StatsResponse ordersResponse)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(StatsResponse ordersResponse)? success,
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
    required TResult Function(StatsInitial<T> value) initial,
    required TResult Function(StatsLoading<T> value) loading,
    required TResult Function(StatsFailure<T> value) failure,
    required TResult Function(StatsSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsInitial<T> value)? initial,
    TResult? Function(StatsLoading<T> value)? loading,
    TResult? Function(StatsFailure<T> value)? failure,
    TResult? Function(StatsSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsInitial<T> value)? initial,
    TResult Function(StatsLoading<T> value)? loading,
    TResult Function(StatsFailure<T> value)? failure,
    TResult Function(StatsSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StatsInitial<T> implements StatsState<T> {
  factory StatsInitial() = _$StatsInitialImpl<T>;
}

/// @nodoc
abstract class _$$StatsLoadingImplCopyWith<T, $Res> {
  factory _$$StatsLoadingImplCopyWith(_$StatsLoadingImpl<T> value,
          $Res Function(_$StatsLoadingImpl<T>) then) =
      __$$StatsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$StatsLoadingImplCopyWithImpl<T, $Res>
    extends _$StatsStateCopyWithImpl<T, $Res, _$StatsLoadingImpl<T>>
    implements _$$StatsLoadingImplCopyWith<T, $Res> {
  __$$StatsLoadingImplCopyWithImpl(
      _$StatsLoadingImpl<T> _value, $Res Function(_$StatsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StatsLoadingImpl<T> implements StatsLoading<T> {
  _$StatsLoadingImpl();

  @override
  String toString() {
    return 'StatsState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StatsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(StatsResponse ordersResponse) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(StatsResponse ordersResponse)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(StatsResponse ordersResponse)? success,
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
    required TResult Function(StatsInitial<T> value) initial,
    required TResult Function(StatsLoading<T> value) loading,
    required TResult Function(StatsFailure<T> value) failure,
    required TResult Function(StatsSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsInitial<T> value)? initial,
    TResult? Function(StatsLoading<T> value)? loading,
    TResult? Function(StatsFailure<T> value)? failure,
    TResult? Function(StatsSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsInitial<T> value)? initial,
    TResult Function(StatsLoading<T> value)? loading,
    TResult Function(StatsFailure<T> value)? failure,
    TResult Function(StatsSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StatsLoading<T> implements StatsState<T> {
  factory StatsLoading() = _$StatsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$StatsFailureImplCopyWith<T, $Res> {
  factory _$$StatsFailureImplCopyWith(_$StatsFailureImpl<T> value,
          $Res Function(_$StatsFailureImpl<T>) then) =
      __$$StatsFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$StatsFailureImplCopyWithImpl<T, $Res>
    extends _$StatsStateCopyWithImpl<T, $Res, _$StatsFailureImpl<T>>
    implements _$$StatsFailureImplCopyWith<T, $Res> {
  __$$StatsFailureImplCopyWithImpl(
      _$StatsFailureImpl<T> _value, $Res Function(_$StatsFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$StatsFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$StatsFailureImpl<T> implements StatsFailure<T> {
  _$StatsFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'StatsState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsFailureImplCopyWith<T, _$StatsFailureImpl<T>> get copyWith =>
      __$$StatsFailureImplCopyWithImpl<T, _$StatsFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(StatsResponse ordersResponse) success,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(StatsResponse ordersResponse)? success,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(StatsResponse ordersResponse)? success,
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
    required TResult Function(StatsInitial<T> value) initial,
    required TResult Function(StatsLoading<T> value) loading,
    required TResult Function(StatsFailure<T> value) failure,
    required TResult Function(StatsSuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsInitial<T> value)? initial,
    TResult? Function(StatsLoading<T> value)? loading,
    TResult? Function(StatsFailure<T> value)? failure,
    TResult? Function(StatsSuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsInitial<T> value)? initial,
    TResult Function(StatsLoading<T> value)? loading,
    TResult Function(StatsFailure<T> value)? failure,
    TResult Function(StatsSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class StatsFailure<T> implements StatsState<T> {
  factory StatsFailure(final ErrorModel errorMessage) = _$StatsFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsFailureImplCopyWith<T, _$StatsFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatsSuccessImplCopyWith<T, $Res> {
  factory _$$StatsSuccessImplCopyWith(_$StatsSuccessImpl<T> value,
          $Res Function(_$StatsSuccessImpl<T>) then) =
      __$$StatsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({StatsResponse ordersResponse});
}

/// @nodoc
class __$$StatsSuccessImplCopyWithImpl<T, $Res>
    extends _$StatsStateCopyWithImpl<T, $Res, _$StatsSuccessImpl<T>>
    implements _$$StatsSuccessImplCopyWith<T, $Res> {
  __$$StatsSuccessImplCopyWithImpl(
      _$StatsSuccessImpl<T> _value, $Res Function(_$StatsSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersResponse = null,
  }) {
    return _then(_$StatsSuccessImpl<T>(
      null == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as StatsResponse,
    ));
  }
}

/// @nodoc

class _$StatsSuccessImpl<T> implements StatsSuccess<T> {
  _$StatsSuccessImpl(this.ordersResponse);

  @override
  final StatsResponse ordersResponse;

  @override
  String toString() {
    return 'StatsState<$T>.success(ordersResponse: $ordersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsSuccessImpl<T> &&
            (identical(other.ordersResponse, ordersResponse) ||
                other.ordersResponse == ordersResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersResponse);

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsSuccessImplCopyWith<T, _$StatsSuccessImpl<T>> get copyWith =>
      __$$StatsSuccessImplCopyWithImpl<T, _$StatsSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(StatsResponse ordersResponse) success,
  }) {
    return success(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(StatsResponse ordersResponse)? success,
  }) {
    return success?.call(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(StatsResponse ordersResponse)? success,
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
    required TResult Function(StatsInitial<T> value) initial,
    required TResult Function(StatsLoading<T> value) loading,
    required TResult Function(StatsFailure<T> value) failure,
    required TResult Function(StatsSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StatsInitial<T> value)? initial,
    TResult? Function(StatsLoading<T> value)? loading,
    TResult? Function(StatsFailure<T> value)? failure,
    TResult? Function(StatsSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StatsInitial<T> value)? initial,
    TResult Function(StatsLoading<T> value)? loading,
    TResult Function(StatsFailure<T> value)? failure,
    TResult Function(StatsSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class StatsSuccess<T> implements StatsState<T> {
  factory StatsSuccess(final StatsResponse ordersResponse) =
      _$StatsSuccessImpl<T>;

  StatsResponse get ordersResponse;

  /// Create a copy of StatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatsSuccessImplCopyWith<T, _$StatsSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
