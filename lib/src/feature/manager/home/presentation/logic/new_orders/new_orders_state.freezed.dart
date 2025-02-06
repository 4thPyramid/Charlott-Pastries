// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_orders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewOrdersState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(NewestOrdersResponse ordersResponse) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(NewestOrdersResponse ordersResponse)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(NewestOrdersResponse ordersResponse)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewOrdersInitial<T> value) initial,
    required TResult Function(NewOrdersLoading<T> value) loading,
    required TResult Function(NewOrdersFailure<T> value) failure,
    required TResult Function(NewOrdersSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewOrdersInitial<T> value)? initial,
    TResult? Function(NewOrdersLoading<T> value)? loading,
    TResult? Function(NewOrdersFailure<T> value)? failure,
    TResult? Function(NewOrdersSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewOrdersInitial<T> value)? initial,
    TResult Function(NewOrdersLoading<T> value)? loading,
    TResult Function(NewOrdersFailure<T> value)? failure,
    TResult Function(NewOrdersSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewOrdersStateCopyWith<T, $Res> {
  factory $NewOrdersStateCopyWith(
          NewOrdersState<T> value, $Res Function(NewOrdersState<T>) then) =
      _$NewOrdersStateCopyWithImpl<T, $Res, NewOrdersState<T>>;
}

/// @nodoc
class _$NewOrdersStateCopyWithImpl<T, $Res, $Val extends NewOrdersState<T>>
    implements $NewOrdersStateCopyWith<T, $Res> {
  _$NewOrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewOrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NewOrdersInitialImplCopyWith<T, $Res> {
  factory _$$NewOrdersInitialImplCopyWith(_$NewOrdersInitialImpl<T> value,
          $Res Function(_$NewOrdersInitialImpl<T>) then) =
      __$$NewOrdersInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NewOrdersInitialImplCopyWithImpl<T, $Res>
    extends _$NewOrdersStateCopyWithImpl<T, $Res, _$NewOrdersInitialImpl<T>>
    implements _$$NewOrdersInitialImplCopyWith<T, $Res> {
  __$$NewOrdersInitialImplCopyWithImpl(_$NewOrdersInitialImpl<T> _value,
      $Res Function(_$NewOrdersInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of NewOrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NewOrdersInitialImpl<T> implements NewOrdersInitial<T> {
  _$NewOrdersInitialImpl();

  @override
  String toString() {
    return 'NewOrdersState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewOrdersInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(NewestOrdersResponse ordersResponse) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(NewestOrdersResponse ordersResponse)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(NewestOrdersResponse ordersResponse)? success,
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
    required TResult Function(NewOrdersInitial<T> value) initial,
    required TResult Function(NewOrdersLoading<T> value) loading,
    required TResult Function(NewOrdersFailure<T> value) failure,
    required TResult Function(NewOrdersSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewOrdersInitial<T> value)? initial,
    TResult? Function(NewOrdersLoading<T> value)? loading,
    TResult? Function(NewOrdersFailure<T> value)? failure,
    TResult? Function(NewOrdersSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewOrdersInitial<T> value)? initial,
    TResult Function(NewOrdersLoading<T> value)? loading,
    TResult Function(NewOrdersFailure<T> value)? failure,
    TResult Function(NewOrdersSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NewOrdersInitial<T> implements NewOrdersState<T> {
  factory NewOrdersInitial() = _$NewOrdersInitialImpl<T>;
}

/// @nodoc
abstract class _$$NewOrdersLoadingImplCopyWith<T, $Res> {
  factory _$$NewOrdersLoadingImplCopyWith(_$NewOrdersLoadingImpl<T> value,
          $Res Function(_$NewOrdersLoadingImpl<T>) then) =
      __$$NewOrdersLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$NewOrdersLoadingImplCopyWithImpl<T, $Res>
    extends _$NewOrdersStateCopyWithImpl<T, $Res, _$NewOrdersLoadingImpl<T>>
    implements _$$NewOrdersLoadingImplCopyWith<T, $Res> {
  __$$NewOrdersLoadingImplCopyWithImpl(_$NewOrdersLoadingImpl<T> _value,
      $Res Function(_$NewOrdersLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of NewOrdersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NewOrdersLoadingImpl<T> implements NewOrdersLoading<T> {
  _$NewOrdersLoadingImpl();

  @override
  String toString() {
    return 'NewOrdersState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewOrdersLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(NewestOrdersResponse ordersResponse) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(NewestOrdersResponse ordersResponse)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(NewestOrdersResponse ordersResponse)? success,
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
    required TResult Function(NewOrdersInitial<T> value) initial,
    required TResult Function(NewOrdersLoading<T> value) loading,
    required TResult Function(NewOrdersFailure<T> value) failure,
    required TResult Function(NewOrdersSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewOrdersInitial<T> value)? initial,
    TResult? Function(NewOrdersLoading<T> value)? loading,
    TResult? Function(NewOrdersFailure<T> value)? failure,
    TResult? Function(NewOrdersSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewOrdersInitial<T> value)? initial,
    TResult Function(NewOrdersLoading<T> value)? loading,
    TResult Function(NewOrdersFailure<T> value)? failure,
    TResult Function(NewOrdersSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NewOrdersLoading<T> implements NewOrdersState<T> {
  factory NewOrdersLoading() = _$NewOrdersLoadingImpl<T>;
}

/// @nodoc
abstract class _$$NewOrdersFailureImplCopyWith<T, $Res> {
  factory _$$NewOrdersFailureImplCopyWith(_$NewOrdersFailureImpl<T> value,
          $Res Function(_$NewOrdersFailureImpl<T>) then) =
      __$$NewOrdersFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$NewOrdersFailureImplCopyWithImpl<T, $Res>
    extends _$NewOrdersStateCopyWithImpl<T, $Res, _$NewOrdersFailureImpl<T>>
    implements _$$NewOrdersFailureImplCopyWith<T, $Res> {
  __$$NewOrdersFailureImplCopyWithImpl(_$NewOrdersFailureImpl<T> _value,
      $Res Function(_$NewOrdersFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of NewOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$NewOrdersFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$NewOrdersFailureImpl<T> implements NewOrdersFailure<T> {
  _$NewOrdersFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'NewOrdersState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewOrdersFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of NewOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewOrdersFailureImplCopyWith<T, _$NewOrdersFailureImpl<T>> get copyWith =>
      __$$NewOrdersFailureImplCopyWithImpl<T, _$NewOrdersFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(NewestOrdersResponse ordersResponse) success,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(NewestOrdersResponse ordersResponse)? success,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(NewestOrdersResponse ordersResponse)? success,
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
    required TResult Function(NewOrdersInitial<T> value) initial,
    required TResult Function(NewOrdersLoading<T> value) loading,
    required TResult Function(NewOrdersFailure<T> value) failure,
    required TResult Function(NewOrdersSuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewOrdersInitial<T> value)? initial,
    TResult? Function(NewOrdersLoading<T> value)? loading,
    TResult? Function(NewOrdersFailure<T> value)? failure,
    TResult? Function(NewOrdersSuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewOrdersInitial<T> value)? initial,
    TResult Function(NewOrdersLoading<T> value)? loading,
    TResult Function(NewOrdersFailure<T> value)? failure,
    TResult Function(NewOrdersSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class NewOrdersFailure<T> implements NewOrdersState<T> {
  factory NewOrdersFailure(final ErrorModel errorMessage) =
      _$NewOrdersFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of NewOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewOrdersFailureImplCopyWith<T, _$NewOrdersFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewOrdersSuccessImplCopyWith<T, $Res> {
  factory _$$NewOrdersSuccessImplCopyWith(_$NewOrdersSuccessImpl<T> value,
          $Res Function(_$NewOrdersSuccessImpl<T>) then) =
      __$$NewOrdersSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({NewestOrdersResponse ordersResponse});
}

/// @nodoc
class __$$NewOrdersSuccessImplCopyWithImpl<T, $Res>
    extends _$NewOrdersStateCopyWithImpl<T, $Res, _$NewOrdersSuccessImpl<T>>
    implements _$$NewOrdersSuccessImplCopyWith<T, $Res> {
  __$$NewOrdersSuccessImplCopyWithImpl(_$NewOrdersSuccessImpl<T> _value,
      $Res Function(_$NewOrdersSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of NewOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersResponse = null,
  }) {
    return _then(_$NewOrdersSuccessImpl<T>(
      null == ordersResponse
          ? _value.ordersResponse
          : ordersResponse // ignore: cast_nullable_to_non_nullable
              as NewestOrdersResponse,
    ));
  }
}

/// @nodoc

class _$NewOrdersSuccessImpl<T> implements NewOrdersSuccess<T> {
  _$NewOrdersSuccessImpl(this.ordersResponse);

  @override
  final NewestOrdersResponse ordersResponse;

  @override
  String toString() {
    return 'NewOrdersState<$T>.success(ordersResponse: $ordersResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewOrdersSuccessImpl<T> &&
            (identical(other.ordersResponse, ordersResponse) ||
                other.ordersResponse == ordersResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersResponse);

  /// Create a copy of NewOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewOrdersSuccessImplCopyWith<T, _$NewOrdersSuccessImpl<T>> get copyWith =>
      __$$NewOrdersSuccessImplCopyWithImpl<T, _$NewOrdersSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(NewestOrdersResponse ordersResponse) success,
  }) {
    return success(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(NewestOrdersResponse ordersResponse)? success,
  }) {
    return success?.call(ordersResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(NewestOrdersResponse ordersResponse)? success,
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
    required TResult Function(NewOrdersInitial<T> value) initial,
    required TResult Function(NewOrdersLoading<T> value) loading,
    required TResult Function(NewOrdersFailure<T> value) failure,
    required TResult Function(NewOrdersSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewOrdersInitial<T> value)? initial,
    TResult? Function(NewOrdersLoading<T> value)? loading,
    TResult? Function(NewOrdersFailure<T> value)? failure,
    TResult? Function(NewOrdersSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewOrdersInitial<T> value)? initial,
    TResult Function(NewOrdersLoading<T> value)? loading,
    TResult Function(NewOrdersFailure<T> value)? failure,
    TResult Function(NewOrdersSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class NewOrdersSuccess<T> implements NewOrdersState<T> {
  factory NewOrdersSuccess(final NewestOrdersResponse ordersResponse) =
      _$NewOrdersSuccessImpl<T>;

  NewestOrdersResponse get ordersResponse;

  /// Create a copy of NewOrdersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewOrdersSuccessImplCopyWith<T, _$NewOrdersSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
