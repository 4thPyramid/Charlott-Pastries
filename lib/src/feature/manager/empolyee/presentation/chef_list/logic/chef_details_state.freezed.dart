// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chef_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChefDetailsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(ChefDetails chefResponse) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(ChefDetails chefResponse)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(ChefDetails chefResponse)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChefDetailsInitial<T> value) initial,
    required TResult Function(ChefDetailsLoading<T> value) loading,
    required TResult Function(ChefDetailsFailure<T> value) failure,
    required TResult Function(ChefDetailsuccess<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChefDetailsInitial<T> value)? initial,
    TResult? Function(ChefDetailsLoading<T> value)? loading,
    TResult? Function(ChefDetailsFailure<T> value)? failure,
    TResult? Function(ChefDetailsuccess<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChefDetailsInitial<T> value)? initial,
    TResult Function(ChefDetailsLoading<T> value)? loading,
    TResult Function(ChefDetailsFailure<T> value)? failure,
    TResult Function(ChefDetailsuccess<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChefDetailsStateCopyWith<T, $Res> {
  factory $ChefDetailsStateCopyWith(
          ChefDetailsState<T> value, $Res Function(ChefDetailsState<T>) then) =
      _$ChefDetailsStateCopyWithImpl<T, $Res, ChefDetailsState<T>>;
}

/// @nodoc
class _$ChefDetailsStateCopyWithImpl<T, $Res, $Val extends ChefDetailsState<T>>
    implements $ChefDetailsStateCopyWith<T, $Res> {
  _$ChefDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChefDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChefDetailsInitialImplCopyWith<T, $Res> {
  factory _$$ChefDetailsInitialImplCopyWith(_$ChefDetailsInitialImpl<T> value,
          $Res Function(_$ChefDetailsInitialImpl<T>) then) =
      __$$ChefDetailsInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ChefDetailsInitialImplCopyWithImpl<T, $Res>
    extends _$ChefDetailsStateCopyWithImpl<T, $Res, _$ChefDetailsInitialImpl<T>>
    implements _$$ChefDetailsInitialImplCopyWith<T, $Res> {
  __$$ChefDetailsInitialImplCopyWithImpl(_$ChefDetailsInitialImpl<T> _value,
      $Res Function(_$ChefDetailsInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChefDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChefDetailsInitialImpl<T> implements ChefDetailsInitial<T> {
  _$ChefDetailsInitialImpl();

  @override
  String toString() {
    return 'ChefDetailsState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChefDetailsInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(ChefDetails chefResponse) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(ChefDetails chefResponse)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(ChefDetails chefResponse)? success,
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
    required TResult Function(ChefDetailsInitial<T> value) initial,
    required TResult Function(ChefDetailsLoading<T> value) loading,
    required TResult Function(ChefDetailsFailure<T> value) failure,
    required TResult Function(ChefDetailsuccess<T> value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChefDetailsInitial<T> value)? initial,
    TResult? Function(ChefDetailsLoading<T> value)? loading,
    TResult? Function(ChefDetailsFailure<T> value)? failure,
    TResult? Function(ChefDetailsuccess<T> value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChefDetailsInitial<T> value)? initial,
    TResult Function(ChefDetailsLoading<T> value)? loading,
    TResult Function(ChefDetailsFailure<T> value)? failure,
    TResult Function(ChefDetailsuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChefDetailsInitial<T> implements ChefDetailsState<T> {
  factory ChefDetailsInitial() = _$ChefDetailsInitialImpl<T>;
}

/// @nodoc
abstract class _$$ChefDetailsLoadingImplCopyWith<T, $Res> {
  factory _$$ChefDetailsLoadingImplCopyWith(_$ChefDetailsLoadingImpl<T> value,
          $Res Function(_$ChefDetailsLoadingImpl<T>) then) =
      __$$ChefDetailsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ChefDetailsLoadingImplCopyWithImpl<T, $Res>
    extends _$ChefDetailsStateCopyWithImpl<T, $Res, _$ChefDetailsLoadingImpl<T>>
    implements _$$ChefDetailsLoadingImplCopyWith<T, $Res> {
  __$$ChefDetailsLoadingImplCopyWithImpl(_$ChefDetailsLoadingImpl<T> _value,
      $Res Function(_$ChefDetailsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChefDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChefDetailsLoadingImpl<T> implements ChefDetailsLoading<T> {
  _$ChefDetailsLoadingImpl();

  @override
  String toString() {
    return 'ChefDetailsState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChefDetailsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(ChefDetails chefResponse) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(ChefDetails chefResponse)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(ChefDetails chefResponse)? success,
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
    required TResult Function(ChefDetailsInitial<T> value) initial,
    required TResult Function(ChefDetailsLoading<T> value) loading,
    required TResult Function(ChefDetailsFailure<T> value) failure,
    required TResult Function(ChefDetailsuccess<T> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChefDetailsInitial<T> value)? initial,
    TResult? Function(ChefDetailsLoading<T> value)? loading,
    TResult? Function(ChefDetailsFailure<T> value)? failure,
    TResult? Function(ChefDetailsuccess<T> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChefDetailsInitial<T> value)? initial,
    TResult Function(ChefDetailsLoading<T> value)? loading,
    TResult Function(ChefDetailsFailure<T> value)? failure,
    TResult Function(ChefDetailsuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChefDetailsLoading<T> implements ChefDetailsState<T> {
  factory ChefDetailsLoading() = _$ChefDetailsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ChefDetailsFailureImplCopyWith<T, $Res> {
  factory _$$ChefDetailsFailureImplCopyWith(_$ChefDetailsFailureImpl<T> value,
          $Res Function(_$ChefDetailsFailureImpl<T>) then) =
      __$$ChefDetailsFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorModel errorMessage});
}

/// @nodoc
class __$$ChefDetailsFailureImplCopyWithImpl<T, $Res>
    extends _$ChefDetailsStateCopyWithImpl<T, $Res, _$ChefDetailsFailureImpl<T>>
    implements _$$ChefDetailsFailureImplCopyWith<T, $Res> {
  __$$ChefDetailsFailureImplCopyWithImpl(_$ChefDetailsFailureImpl<T> _value,
      $Res Function(_$ChefDetailsFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChefDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ChefDetailsFailureImpl<T>(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as ErrorModel,
    ));
  }
}

/// @nodoc

class _$ChefDetailsFailureImpl<T> implements ChefDetailsFailure<T> {
  _$ChefDetailsFailureImpl(this.errorMessage);

  @override
  final ErrorModel errorMessage;

  @override
  String toString() {
    return 'ChefDetailsState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChefDetailsFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ChefDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChefDetailsFailureImplCopyWith<T, _$ChefDetailsFailureImpl<T>>
      get copyWith => __$$ChefDetailsFailureImplCopyWithImpl<T,
          _$ChefDetailsFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(ChefDetails chefResponse) success,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(ChefDetails chefResponse)? success,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(ChefDetails chefResponse)? success,
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
    required TResult Function(ChefDetailsInitial<T> value) initial,
    required TResult Function(ChefDetailsLoading<T> value) loading,
    required TResult Function(ChefDetailsFailure<T> value) failure,
    required TResult Function(ChefDetailsuccess<T> value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChefDetailsInitial<T> value)? initial,
    TResult? Function(ChefDetailsLoading<T> value)? loading,
    TResult? Function(ChefDetailsFailure<T> value)? failure,
    TResult? Function(ChefDetailsuccess<T> value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChefDetailsInitial<T> value)? initial,
    TResult Function(ChefDetailsLoading<T> value)? loading,
    TResult Function(ChefDetailsFailure<T> value)? failure,
    TResult Function(ChefDetailsuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ChefDetailsFailure<T> implements ChefDetailsState<T> {
  factory ChefDetailsFailure(final ErrorModel errorMessage) =
      _$ChefDetailsFailureImpl<T>;

  ErrorModel get errorMessage;

  /// Create a copy of ChefDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChefDetailsFailureImplCopyWith<T, _$ChefDetailsFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChefDetailsuccessImplCopyWith<T, $Res> {
  factory _$$ChefDetailsuccessImplCopyWith(_$ChefDetailsuccessImpl<T> value,
          $Res Function(_$ChefDetailsuccessImpl<T>) then) =
      __$$ChefDetailsuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ChefDetails chefResponse});
}

/// @nodoc
class __$$ChefDetailsuccessImplCopyWithImpl<T, $Res>
    extends _$ChefDetailsStateCopyWithImpl<T, $Res, _$ChefDetailsuccessImpl<T>>
    implements _$$ChefDetailsuccessImplCopyWith<T, $Res> {
  __$$ChefDetailsuccessImplCopyWithImpl(_$ChefDetailsuccessImpl<T> _value,
      $Res Function(_$ChefDetailsuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChefDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chefResponse = null,
  }) {
    return _then(_$ChefDetailsuccessImpl<T>(
      null == chefResponse
          ? _value.chefResponse
          : chefResponse // ignore: cast_nullable_to_non_nullable
              as ChefDetails,
    ));
  }
}

/// @nodoc

class _$ChefDetailsuccessImpl<T> implements ChefDetailsuccess<T> {
  _$ChefDetailsuccessImpl(this.chefResponse);

  @override
  final ChefDetails chefResponse;

  @override
  String toString() {
    return 'ChefDetailsState<$T>.success(chefResponse: $chefResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChefDetailsuccessImpl<T> &&
            (identical(other.chefResponse, chefResponse) ||
                other.chefResponse == chefResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chefResponse);

  /// Create a copy of ChefDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChefDetailsuccessImplCopyWith<T, _$ChefDetailsuccessImpl<T>>
      get copyWith =>
          __$$ChefDetailsuccessImplCopyWithImpl<T, _$ChefDetailsuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ErrorModel errorMessage) failure,
    required TResult Function(ChefDetails chefResponse) success,
  }) {
    return success(chefResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ErrorModel errorMessage)? failure,
    TResult? Function(ChefDetails chefResponse)? success,
  }) {
    return success?.call(chefResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ErrorModel errorMessage)? failure,
    TResult Function(ChefDetails chefResponse)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(chefResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChefDetailsInitial<T> value) initial,
    required TResult Function(ChefDetailsLoading<T> value) loading,
    required TResult Function(ChefDetailsFailure<T> value) failure,
    required TResult Function(ChefDetailsuccess<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChefDetailsInitial<T> value)? initial,
    TResult? Function(ChefDetailsLoading<T> value)? loading,
    TResult? Function(ChefDetailsFailure<T> value)? failure,
    TResult? Function(ChefDetailsuccess<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChefDetailsInitial<T> value)? initial,
    TResult Function(ChefDetailsLoading<T> value)? loading,
    TResult Function(ChefDetailsFailure<T> value)? failure,
    TResult Function(ChefDetailsuccess<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ChefDetailsuccess<T> implements ChefDetailsState<T> {
  factory ChefDetailsuccess(final ChefDetails chefResponse) =
      _$ChefDetailsuccessImpl<T>;

  ChefDetails get chefResponse;

  /// Create a copy of ChefDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChefDetailsuccessImplCopyWith<T, _$ChefDetailsuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
