// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlacesModel _$PlacesModelFromJson(Map<String, dynamic> json) {
  return _PlacesModel.fromJson(json);
}

/// @nodoc
mixin _$PlacesModel {
  @JsonKey(name: 'Status')
  bool? get apiStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<PlacesDataList>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'Success')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacesModelCopyWith<PlacesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesModelCopyWith<$Res> {
  factory $PlacesModelCopyWith(
          PlacesModel value, $Res Function(PlacesModel) then) =
      _$PlacesModelCopyWithImpl<$Res, PlacesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Status') bool? apiStatus,
      @JsonKey(name: 'data') List<PlacesDataList>? data,
      @JsonKey(name: 'Success') String? message});
}

/// @nodoc
class _$PlacesModelCopyWithImpl<$Res, $Val extends PlacesModel>
    implements $PlacesModelCopyWith<$Res> {
  _$PlacesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PlacesDataList>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlacesModelImplCopyWith<$Res>
    implements $PlacesModelCopyWith<$Res> {
  factory _$$PlacesModelImplCopyWith(
          _$PlacesModelImpl value, $Res Function(_$PlacesModelImpl) then) =
      __$$PlacesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Status') bool? apiStatus,
      @JsonKey(name: 'data') List<PlacesDataList>? data,
      @JsonKey(name: 'Success') String? message});
}

/// @nodoc
class __$$PlacesModelImplCopyWithImpl<$Res>
    extends _$PlacesModelCopyWithImpl<$Res, _$PlacesModelImpl>
    implements _$$PlacesModelImplCopyWith<$Res> {
  __$$PlacesModelImplCopyWithImpl(
      _$PlacesModelImpl _value, $Res Function(_$PlacesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PlacesModelImpl(
      apiStatus: freezed == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PlacesDataList>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlacesModelImpl implements _PlacesModel {
  _$PlacesModelImpl(
      {@JsonKey(name: 'Status') this.apiStatus,
      @JsonKey(name: 'data') final List<PlacesDataList>? data,
      @JsonKey(name: 'Success') this.message})
      : _data = data;

  factory _$PlacesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlacesModelImplFromJson(json);

  @override
  @JsonKey(name: 'Status')
  final bool? apiStatus;
  final List<PlacesDataList>? _data;
  @override
  @JsonKey(name: 'data')
  List<PlacesDataList>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'Success')
  final String? message;

  @override
  String toString() {
    return 'PlacesModel(apiStatus: $apiStatus, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesModelImpl &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, apiStatus,
      const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacesModelImplCopyWith<_$PlacesModelImpl> get copyWith =>
      __$$PlacesModelImplCopyWithImpl<_$PlacesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacesModelImplToJson(
      this,
    );
  }
}

abstract class _PlacesModel implements PlacesModel {
  factory _PlacesModel(
      {@JsonKey(name: 'Status') final bool? apiStatus,
      @JsonKey(name: 'data') final List<PlacesDataList>? data,
      @JsonKey(name: 'Success') final String? message}) = _$PlacesModelImpl;

  factory _PlacesModel.fromJson(Map<String, dynamic> json) =
      _$PlacesModelImpl.fromJson;

  @override
  @JsonKey(name: 'Status')
  bool? get apiStatus;
  @override
  @JsonKey(name: 'data')
  List<PlacesDataList>? get data;
  @override
  @JsonKey(name: 'Success')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$PlacesModelImplCopyWith<_$PlacesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlacesDataList _$PlacesDataListFromJson(Map<String, dynamic> json) {
  return _PlacesDataList.fromJson(json);
}

/// @nodoc
mixin _$PlacesDataList {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricePerPerson')
  String get pricePerPerson => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacesDataListCopyWith<PlacesDataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesDataListCopyWith<$Res> {
  factory $PlacesDataListCopyWith(
          PlacesDataList value, $Res Function(PlacesDataList) then) =
      _$PlacesDataListCopyWithImpl<$Res, PlacesDataList>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'pricePerPerson') String pricePerPerson,
      @JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'category') String category});
}

/// @nodoc
class _$PlacesDataListCopyWithImpl<$Res, $Val extends PlacesDataList>
    implements $PlacesDataListCopyWith<$Res> {
  _$PlacesDataListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? country = null,
    Object? city = null,
    Object? pricePerPerson = null,
    Object? currency = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerPerson: null == pricePerPerson
          ? _value.pricePerPerson
          : pricePerPerson // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlacesDataListImplCopyWith<$Res>
    implements $PlacesDataListCopyWith<$Res> {
  factory _$$PlacesDataListImplCopyWith(_$PlacesDataListImpl value,
          $Res Function(_$PlacesDataListImpl) then) =
      __$$PlacesDataListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'pricePerPerson') String pricePerPerson,
      @JsonKey(name: 'currency') String currency,
      @JsonKey(name: 'category') String category});
}

/// @nodoc
class __$$PlacesDataListImplCopyWithImpl<$Res>
    extends _$PlacesDataListCopyWithImpl<$Res, _$PlacesDataListImpl>
    implements _$$PlacesDataListImplCopyWith<$Res> {
  __$$PlacesDataListImplCopyWithImpl(
      _$PlacesDataListImpl _value, $Res Function(_$PlacesDataListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? country = null,
    Object? city = null,
    Object? pricePerPerson = null,
    Object? currency = null,
    Object? category = null,
  }) {
    return _then(_$PlacesDataListImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerPerson: null == pricePerPerson
          ? _value.pricePerPerson
          : pricePerPerson // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlacesDataListImpl implements _PlacesDataList {
  _$PlacesDataListImpl(
      {@JsonKey(name: '_id') this.id = '',
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'country') this.country = '',
      @JsonKey(name: 'city') this.city = '',
      @JsonKey(name: 'pricePerPerson') this.pricePerPerson = '',
      @JsonKey(name: 'currency') this.currency = '',
      @JsonKey(name: 'category') this.category = ''});

  factory _$PlacesDataListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlacesDataListImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'pricePerPerson')
  final String pricePerPerson;
  @override
  @JsonKey(name: 'currency')
  final String currency;
  @override
  @JsonKey(name: 'category')
  final String category;

  @override
  String toString() {
    return 'PlacesDataList(id: $id, title: $title, description: $description, image: $image, country: $country, city: $city, pricePerPerson: $pricePerPerson, currency: $currency, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesDataListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.pricePerPerson, pricePerPerson) ||
                other.pricePerPerson == pricePerPerson) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, image,
      country, city, pricePerPerson, currency, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacesDataListImplCopyWith<_$PlacesDataListImpl> get copyWith =>
      __$$PlacesDataListImplCopyWithImpl<_$PlacesDataListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacesDataListImplToJson(
      this,
    );
  }
}

abstract class _PlacesDataList implements PlacesDataList {
  factory _PlacesDataList(
      {@JsonKey(name: '_id') final String id,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'image') final String image,
      @JsonKey(name: 'country') final String country,
      @JsonKey(name: 'city') final String city,
      @JsonKey(name: 'pricePerPerson') final String pricePerPerson,
      @JsonKey(name: 'currency') final String currency,
      @JsonKey(name: 'category') final String category}) = _$PlacesDataListImpl;

  factory _PlacesDataList.fromJson(Map<String, dynamic> json) =
      _$PlacesDataListImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'country')
  String get country;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'pricePerPerson')
  String get pricePerPerson;
  @override
  @JsonKey(name: 'currency')
  String get currency;
  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$PlacesDataListImplCopyWith<_$PlacesDataListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
