// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeliveryDetailsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(DeliveryDetails deliveryResponse) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(DeliveryDetails deliveryResponse)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(DeliveryDetails deliveryResponse)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeliveryDetailsInitial<T> value) initial,
    required TResult Function(DeliveryDetailsLoading<T> value) loading,
    required TResult Function(DeliveryDetailsFailure<T> value) failure,
    required TResult Function(DeliveryDetailSuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliveryDetailsInitial<T> value)? initial,
    TResult? Function(DeliveryDetailsLoading<T> value)? loading,
    TResult? Function(DeliveryDetailsFailure<T> value)? failure,
    TResult? Function(DeliveryDetailSuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryDetailsInitial<T> value)? initial,
    TResult Function(DeliveryDetailsLoading<T> value)? loading,
    TResult Function(DeliveryDetailsFailure<T> value)? failure,
    TResult Function(DeliveryDetailSuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDetailsStateCopyWith<T, $Res> {
  factory $DeliveryDetailsStateCopyWith(DeliveryDetailsState<T> value,
          $Res Function(DeliveryDetailsState<T>) then) =
      _$DeliveryDetailsStateCopyWithImpl<T, $Res, DeliveryDetailsState<T>>;
}

/// @nodoc
class _$DeliveryDetailsStateCopyWithImpl<T, $Res,
        $Val extends DeliveryDetailsState<T>>
    implements $DeliveryDetailsStateCopyWith<T, $Res> {
  _$DeliveryDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DeliveryDetailsInitialImplCopyWith<T, $Res> {
  factory _$$DeliveryDetailsInitialImplCopyWith(
          _$DeliveryDetailsInitialImpl<T> value,
          $Res Function(_$DeliveryDetailsInitialImpl<T>) then) =
      __$$DeliveryDetailsInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DeliveryDetailsInitialImplCopyWithImpl<T, $Res>
    extends _$DeliveryDetailsStateCopyWithImpl<T, $Res,
        _$DeliveryDetailsInitialImpl<T>>
    implements _$$DeliveryDetailsInitialImplCopyWith<T, $Res> {
  __$$DeliveryDetailsInitialImplCopyWithImpl(
      _$DeliveryDetailsInitialImpl<T> _value,
      $Res Function(_$DeliveryDetailsInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeliveryDetailsInitialImpl<T> implements DeliveryDetailsInitial<T> {
  _$DeliveryDetailsInitialImpl();

  @override
  String toString() {
    return 'DeliveryDetailsState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDetailsInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(DeliveryDetails deliveryResponse) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(DeliveryDetails deliveryResponse)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(DeliveryDetails deliveryResponse)? success,
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
    required TResult Function(DeliveryDetailsInitial<T> value) initial,
    required TResult Function(DeliveryDetailsLoading<T> value) loading,
    required TResult Function(DeliveryDetailsFailure<T> value) failure,
    required TResult Function(DeliveryDetailSuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliveryDetailsInitial<T> value)? initial,
    TResult? Function(DeliveryDetailsLoading<T> value)? loading,
    TResult? Function(DeliveryDetailsFailure<T> value)? failure,
    TResult? Function(DeliveryDetailSuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryDetailsInitial<T> value)? initial,
    TResult Function(DeliveryDetailsLoading<T> value)? loading,
    TResult Function(DeliveryDetailsFailure<T> value)? failure,
    TResult Function(DeliveryDetailSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DeliveryDetailsInitial<T> implements DeliveryDetailsState<T> {
  factory DeliveryDetailsInitial() = _$DeliveryDetailsInitialImpl<T>;
}

/// @nodoc
abstract class _$$DeliveryDetailsLoadingImplCopyWith<T, $Res> {
  factory _$$DeliveryDetailsLoadingImplCopyWith(
          _$DeliveryDetailsLoadingImpl<T> value,
          $Res Function(_$DeliveryDetailsLoadingImpl<T>) then) =
      __$$DeliveryDetailsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DeliveryDetailsLoadingImplCopyWithImpl<T, $Res>
    extends _$DeliveryDetailsStateCopyWithImpl<T, $Res,
        _$DeliveryDetailsLoadingImpl<T>>
    implements _$$DeliveryDetailsLoadingImplCopyWith<T, $Res> {
  __$$DeliveryDetailsLoadingImplCopyWithImpl(
      _$DeliveryDetailsLoadingImpl<T> _value,
      $Res Function(_$DeliveryDetailsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeliveryDetailsLoadingImpl<T> implements DeliveryDetailsLoading<T> {
  _$DeliveryDetailsLoadingImpl();

  @override
  String toString() {
    return 'DeliveryDetailsState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDetailsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(DeliveryDetails deliveryResponse) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(DeliveryDetails deliveryResponse)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(DeliveryDetails deliveryResponse)? success,
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
    required TResult Function(DeliveryDetailsInitial<T> value) initial,
    required TResult Function(DeliveryDetailsLoading<T> value) loading,
    required TResult Function(DeliveryDetailsFailure<T> value) failure,
    required TResult Function(DeliveryDetailSuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliveryDetailsInitial<T> value)? initial,
    TResult? Function(DeliveryDetailsLoading<T> value)? loading,
    TResult? Function(DeliveryDetailsFailure<T> value)? failure,
    TResult? Function(DeliveryDetailSuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryDetailsInitial<T> value)? initial,
    TResult Function(DeliveryDetailsLoading<T> value)? loading,
    TResult Function(DeliveryDetailsFailure<T> value)? failure,
    TResult Function(DeliveryDetailSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DeliveryDetailsLoading<T> implements DeliveryDetailsState<T> {
  factory DeliveryDetailsLoading() = _$DeliveryDetailsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$DeliveryDetailsFailureImplCopyWith<T, $Res> {
  factory _$$DeliveryDetailsFailureImplCopyWith(
          _$DeliveryDetailsFailureImpl<T> value,
          $Res Function(_$DeliveryDetailsFailureImpl<T>) then) =
      __$$DeliveryDetailsFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$DeliveryDetailsFailureImplCopyWithImpl<T, $Res>
    extends _$DeliveryDetailsStateCopyWithImpl<T, $Res,
        _$DeliveryDetailsFailureImpl<T>>
    implements _$$DeliveryDetailsFailureImplCopyWith<T, $Res> {
  __$$DeliveryDetailsFailureImplCopyWithImpl(
      _$DeliveryDetailsFailureImpl<T> _value,
      $Res Function(_$DeliveryDetailsFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$DeliveryDetailsFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$DeliveryDetailsFailureImpl<T> implements DeliveryDetailsFailure<T> {
  _$DeliveryDetailsFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'DeliveryDetailsState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDetailsFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of DeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryDetailsFailureImplCopyWith<T, _$DeliveryDetailsFailureImpl<T>>
      get copyWith => __$$DeliveryDetailsFailureImplCopyWithImpl<T,
          _$DeliveryDetailsFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(DeliveryDetails deliveryResponse) success,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(DeliveryDetails deliveryResponse)? success,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(DeliveryDetails deliveryResponse)? success,
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
    required TResult Function(DeliveryDetailsInitial<T> value) initial,
    required TResult Function(DeliveryDetailsLoading<T> value) loading,
    required TResult Function(DeliveryDetailsFailure<T> value) failure,
    required TResult Function(DeliveryDetailSuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliveryDetailsInitial<T> value)? initial,
    TResult? Function(DeliveryDetailsLoading<T> value)? loading,
    TResult? Function(DeliveryDetailsFailure<T> value)? failure,
    TResult? Function(DeliveryDetailSuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryDetailsInitial<T> value)? initial,
    TResult Function(DeliveryDetailsLoading<T> value)? loading,
    TResult Function(DeliveryDetailsFailure<T> value)? failure,
    TResult Function(DeliveryDetailSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DeliveryDetailsFailure<T> implements DeliveryDetailsState<T> {
  factory DeliveryDetailsFailure(final ErrorModel errorMessage) =
      _$DeliveryDetailsFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of DeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryDetailsFailureImplCopyWith<T, _$DeliveryDetailsFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeliveryDetailSuccessImplCopyWith<T, $Res> {
  factory _$$DeliveryDetailSuccessImplCopyWith(
          _$DeliveryDetailSuccessImpl<T> value,
          $Res Function(_$DeliveryDetailSuccessImpl<T>) then) =
      __$$DeliveryDetailSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({DeliveryDetails deliveryResponse});
}

/// @nodoc
class __$$DeliveryDetailSuccessImplCopyWithImpl<T, $Res>
    extends _$DeliveryDetailsStateCopyWithImpl<T, $Res,
        _$DeliveryDetailSuccessImpl<T>>
    implements _$$DeliveryDetailSuccessImplCopyWith<T, $Res> {
  __$$DeliveryDetailSuccessImplCopyWithImpl(
      _$DeliveryDetailSuccessImpl<T> _value,
      $Res Function(_$DeliveryDetailSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryResponse = null,
  }) {
    return _then(_$DeliveryDetailSuccessImpl<T>(
      null == deliveryResponse
          ? _value.deliveryResponse
          : deliveryResponse // ignore: cast_nullable_to_non_nullable
              as DeliveryDetails,
    ));
  }
}

/// @nodoc

class _$DeliveryDetailSuccessImpl<T> implements DeliveryDetailSuccess<T> {
  _$DeliveryDetailSuccessImpl(this.deliveryResponse);

  @override
  final DeliveryDetails deliveryResponse;

  @override
  String toString() {
    return 'DeliveryDetailsState<$T>.success(deliveryResponse: $deliveryResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDetailSuccessImpl<T> &&
            (identical(other.deliveryResponse, deliveryResponse) ||
                other.deliveryResponse == deliveryResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deliveryResponse);

  /// Create a copy of DeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryDetailSuccessImplCopyWith<T, _$DeliveryDetailSuccessImpl<T>>
      get copyWith => __$$DeliveryDetailSuccessImplCopyWithImpl<T,
          _$DeliveryDetailSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(DeliveryDetails deliveryResponse) success,
  }) {
    return success(deliveryResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(DeliveryDetails deliveryResponse)? success,
  }) {
    return success?.call(deliveryResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(DeliveryDetails deliveryResponse)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(deliveryResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DeliveryDetailsInitial<T> value) initial,
    required TResult Function(DeliveryDetailsLoading<T> value) loading,
    required TResult Function(DeliveryDetailsFailure<T> value) failure,
    required TResult Function(DeliveryDetailSuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DeliveryDetailsInitial<T> value)? initial,
    TResult? Function(DeliveryDetailsLoading<T> value)? loading,
    TResult? Function(DeliveryDetailsFailure<T> value)? failure,
    TResult? Function(DeliveryDetailSuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DeliveryDetailsInitial<T> value)? initial,
    TResult Function(DeliveryDetailsLoading<T> value)? loading,
    TResult Function(DeliveryDetailsFailure<T> value)? failure,
    TResult Function(DeliveryDetailSuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DeliveryDetailSuccess<T> implements DeliveryDetailsState<T> {
  factory DeliveryDetailSuccess(final DeliveryDetails deliveryResponse) =
      _$DeliveryDetailSuccessImpl<T>;

  DeliveryDetails get deliveryResponse;

  /// Create a copy of DeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryDetailSuccessImplCopyWith<T, _$DeliveryDetailSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
