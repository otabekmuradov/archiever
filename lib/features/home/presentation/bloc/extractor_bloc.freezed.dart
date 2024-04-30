// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extractor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExtractorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getZipFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getZipFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getZipFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetZipFile value) getZipFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetZipFile value)? getZipFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetZipFile value)? getZipFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtractorEventCopyWith<$Res> {
  factory $ExtractorEventCopyWith(
          ExtractorEvent value, $Res Function(ExtractorEvent) then) =
      _$ExtractorEventCopyWithImpl<$Res, ExtractorEvent>;
}

/// @nodoc
class _$ExtractorEventCopyWithImpl<$Res, $Val extends ExtractorEvent>
    implements $ExtractorEventCopyWith<$Res> {
  _$ExtractorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetZipFileImplCopyWith<$Res> {
  factory _$$GetZipFileImplCopyWith(
          _$GetZipFileImpl value, $Res Function(_$GetZipFileImpl) then) =
      __$$GetZipFileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetZipFileImplCopyWithImpl<$Res>
    extends _$ExtractorEventCopyWithImpl<$Res, _$GetZipFileImpl>
    implements _$$GetZipFileImplCopyWith<$Res> {
  __$$GetZipFileImplCopyWithImpl(
      _$GetZipFileImpl _value, $Res Function(_$GetZipFileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetZipFileImpl implements _GetZipFile {
  const _$GetZipFileImpl();

  @override
  String toString() {
    return 'ExtractorEvent.getZipFile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetZipFileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getZipFile,
  }) {
    return getZipFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getZipFile,
  }) {
    return getZipFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getZipFile,
    required TResult orElse(),
  }) {
    if (getZipFile != null) {
      return getZipFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetZipFile value) getZipFile,
  }) {
    return getZipFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetZipFile value)? getZipFile,
  }) {
    return getZipFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetZipFile value)? getZipFile,
    required TResult orElse(),
  }) {
    if (getZipFile != null) {
      return getZipFile(this);
    }
    return orElse();
  }
}

abstract class _GetZipFile implements ExtractorEvent {
  const factory _GetZipFile() = _$GetZipFileImpl;
}

/// @nodoc
mixin _$ExtractorState {
  Failure? get error => throw _privateConstructorUsedError;
  Statuses get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExtractorStateCopyWith<ExtractorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtractorStateCopyWith<$Res> {
  factory $ExtractorStateCopyWith(
          ExtractorState value, $Res Function(ExtractorState) then) =
      _$ExtractorStateCopyWithImpl<$Res, ExtractorState>;
  @useResult
  $Res call({Failure? error, Statuses status});
}

/// @nodoc
class _$ExtractorStateCopyWithImpl<$Res, $Val extends ExtractorState>
    implements $ExtractorStateCopyWith<$Res> {
  _$ExtractorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Statuses,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtractorStateImplCopyWith<$Res>
    implements $ExtractorStateCopyWith<$Res> {
  factory _$$ExtractorStateImplCopyWith(_$ExtractorStateImpl value,
          $Res Function(_$ExtractorStateImpl) then) =
      __$$ExtractorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Failure? error, Statuses status});
}

/// @nodoc
class __$$ExtractorStateImplCopyWithImpl<$Res>
    extends _$ExtractorStateCopyWithImpl<$Res, _$ExtractorStateImpl>
    implements _$$ExtractorStateImplCopyWith<$Res> {
  __$$ExtractorStateImplCopyWithImpl(
      _$ExtractorStateImpl _value, $Res Function(_$ExtractorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? status = null,
  }) {
    return _then(_$ExtractorStateImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Statuses,
    ));
  }
}

/// @nodoc

class _$ExtractorStateImpl implements _ExtractorState {
  const _$ExtractorStateImpl({this.error, this.status = Statuses.initial});

  @override
  final Failure? error;
  @override
  @JsonKey()
  final Statuses status;

  @override
  String toString() {
    return 'ExtractorState(error: $error, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtractorStateImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtractorStateImplCopyWith<_$ExtractorStateImpl> get copyWith =>
      __$$ExtractorStateImplCopyWithImpl<_$ExtractorStateImpl>(
          this, _$identity);
}

abstract class _ExtractorState implements ExtractorState {
  const factory _ExtractorState({final Failure? error, final Statuses status}) =
      _$ExtractorStateImpl;

  @override
  Failure? get error;
  @override
  Statuses get status;
  @override
  @JsonKey(ignore: true)
  _$$ExtractorStateImplCopyWith<_$ExtractorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
