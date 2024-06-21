// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_fav_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddToFavModel _$AddToFavModelFromJson(Map<String, dynamic> json) {
  return _AddToFavModel.fromJson(json);
}

/// @nodoc
mixin _$AddToFavModel {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddToFavModelCopyWith<AddToFavModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToFavModelCopyWith<$Res> {
  factory $AddToFavModelCopyWith(
          AddToFavModel value, $Res Function(AddToFavModel) then) =
      _$AddToFavModelCopyWithImpl<$Res, AddToFavModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "status") bool? status});
}

/// @nodoc
class _$AddToFavModelCopyWithImpl<$Res, $Val extends AddToFavModel>
    implements $AddToFavModelCopyWith<$Res> {
  _$AddToFavModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddToFavModelImplCopyWith<$Res>
    implements $AddToFavModelCopyWith<$Res> {
  factory _$$AddToFavModelImplCopyWith(
          _$AddToFavModelImpl value, $Res Function(_$AddToFavModelImpl) then) =
      __$$AddToFavModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "status") bool? status});
}

/// @nodoc
class __$$AddToFavModelImplCopyWithImpl<$Res>
    extends _$AddToFavModelCopyWithImpl<$Res, _$AddToFavModelImpl>
    implements _$$AddToFavModelImplCopyWith<$Res> {
  __$$AddToFavModelImplCopyWithImpl(
      _$AddToFavModelImpl _value, $Res Function(_$AddToFavModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$AddToFavModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddToFavModelImpl implements _AddToFavModel {
  const _$AddToFavModelImpl(
      {@JsonKey(name: "message") this.message = "",
      @JsonKey(name: "status") this.status = false});

  factory _$AddToFavModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddToFavModelImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "status")
  final bool? status;

  @override
  String toString() {
    return 'AddToFavModel(message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFavModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToFavModelImplCopyWith<_$AddToFavModelImpl> get copyWith =>
      __$$AddToFavModelImplCopyWithImpl<_$AddToFavModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddToFavModelImplToJson(
      this,
    );
  }
}

abstract class _AddToFavModel implements AddToFavModel {
  const factory _AddToFavModel(
      {@JsonKey(name: "message") final String? message,
      @JsonKey(name: "status") final bool? status}) = _$AddToFavModelImpl;

  factory _AddToFavModel.fromJson(Map<String, dynamic> json) =
      _$AddToFavModelImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(ignore: true)
  _$$AddToFavModelImplCopyWith<_$AddToFavModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
