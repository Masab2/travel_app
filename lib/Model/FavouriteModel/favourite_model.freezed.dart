// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavouriteModel _$FavouriteModelFromJson(Map<String, dynamic> json) {
  return _FavouriteModel.fromJson(json);
}

/// @nodoc
mixin _$FavouriteModel {
  @JsonKey(name: "Status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "Success")
  List<FavouriteDataList>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteModelCopyWith<FavouriteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteModelCopyWith<$Res> {
  factory $FavouriteModelCopyWith(
          FavouriteModel value, $Res Function(FavouriteModel) then) =
      _$FavouriteModelCopyWithImpl<$Res, FavouriteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "Status") bool? status,
      @JsonKey(name: "Success") List<FavouriteDataList>? data});
}

/// @nodoc
class _$FavouriteModelCopyWithImpl<$Res, $Val extends FavouriteModel>
    implements $FavouriteModelCopyWith<$Res> {
  _$FavouriteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FavouriteDataList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouriteModelImplCopyWith<$Res>
    implements $FavouriteModelCopyWith<$Res> {
  factory _$$FavouriteModelImplCopyWith(_$FavouriteModelImpl value,
          $Res Function(_$FavouriteModelImpl) then) =
      __$$FavouriteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Status") bool? status,
      @JsonKey(name: "Success") List<FavouriteDataList>? data});
}

/// @nodoc
class __$$FavouriteModelImplCopyWithImpl<$Res>
    extends _$FavouriteModelCopyWithImpl<$Res, _$FavouriteModelImpl>
    implements _$$FavouriteModelImplCopyWith<$Res> {
  __$$FavouriteModelImplCopyWithImpl(
      _$FavouriteModelImpl _value, $Res Function(_$FavouriteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FavouriteModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FavouriteDataList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouriteModelImpl implements _FavouriteModel {
  _$FavouriteModelImpl(
      {@JsonKey(name: "Status") this.status,
      @JsonKey(name: "Success") final List<FavouriteDataList>? data})
      : _data = data;

  factory _$FavouriteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouriteModelImplFromJson(json);

  @override
  @JsonKey(name: "Status")
  final bool? status;
  final List<FavouriteDataList>? _data;
  @override
  @JsonKey(name: "Success")
  List<FavouriteDataList>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FavouriteModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteModelImplCopyWith<_$FavouriteModelImpl> get copyWith =>
      __$$FavouriteModelImplCopyWithImpl<_$FavouriteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouriteModelImplToJson(
      this,
    );
  }
}

abstract class _FavouriteModel implements FavouriteModel {
  factory _FavouriteModel(
          {@JsonKey(name: "Status") final bool? status,
          @JsonKey(name: "Success") final List<FavouriteDataList>? data}) =
      _$FavouriteModelImpl;

  factory _FavouriteModel.fromJson(Map<String, dynamic> json) =
      _$FavouriteModelImpl.fromJson;

  @override
  @JsonKey(name: "Status")
  bool? get status;
  @override
  @JsonKey(name: "Success")
  List<FavouriteDataList>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FavouriteModelImplCopyWith<_$FavouriteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FavouriteDataList _$FavouriteDataListFromJson(Map<String, dynamic> json) {
  return _FavouriteDataList.fromJson(json);
}

/// @nodoc
mixin _$FavouriteDataList {
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
  @JsonKey(name: 'userId')
  String get userid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteDataListCopyWith<FavouriteDataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteDataListCopyWith<$Res> {
  factory $FavouriteDataListCopyWith(
          FavouriteDataList value, $Res Function(FavouriteDataList) then) =
      _$FavouriteDataListCopyWithImpl<$Res, FavouriteDataList>;
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
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'userId') String userid});
}

/// @nodoc
class _$FavouriteDataListCopyWithImpl<$Res, $Val extends FavouriteDataList>
    implements $FavouriteDataListCopyWith<$Res> {
  _$FavouriteDataListCopyWithImpl(this._value, this._then);

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
    Object? userid = null,
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
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouriteDataListImplCopyWith<$Res>
    implements $FavouriteDataListCopyWith<$Res> {
  factory _$$FavouriteDataListImplCopyWith(_$FavouriteDataListImpl value,
          $Res Function(_$FavouriteDataListImpl) then) =
      __$$FavouriteDataListImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'category') String category,
      @JsonKey(name: 'userId') String userid});
}

/// @nodoc
class __$$FavouriteDataListImplCopyWithImpl<$Res>
    extends _$FavouriteDataListCopyWithImpl<$Res, _$FavouriteDataListImpl>
    implements _$$FavouriteDataListImplCopyWith<$Res> {
  __$$FavouriteDataListImplCopyWithImpl(_$FavouriteDataListImpl _value,
      $Res Function(_$FavouriteDataListImpl) _then)
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
    Object? userid = null,
  }) {
    return _then(_$FavouriteDataListImpl(
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
      userid: null == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouriteDataListImpl implements _FavouriteDataList {
  _$FavouriteDataListImpl(
      {@JsonKey(name: '_id') this.id = '',
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'country') this.country = '',
      @JsonKey(name: 'city') this.city = '',
      @JsonKey(name: 'pricePerPerson') this.pricePerPerson = '',
      @JsonKey(name: 'currency') this.currency = '',
      @JsonKey(name: 'category') this.category = '',
      @JsonKey(name: 'userId') this.userid = ''});

  factory _$FavouriteDataListImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouriteDataListImplFromJson(json);

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
  @JsonKey(name: 'userId')
  final String userid;

  @override
  String toString() {
    return 'FavouriteDataList(id: $id, title: $title, description: $description, image: $image, country: $country, city: $city, pricePerPerson: $pricePerPerson, currency: $currency, category: $category, userid: $userid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteDataListImpl &&
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
                other.category == category) &&
            (identical(other.userid, userid) || other.userid == userid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, image,
      country, city, pricePerPerson, currency, category, userid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteDataListImplCopyWith<_$FavouriteDataListImpl> get copyWith =>
      __$$FavouriteDataListImplCopyWithImpl<_$FavouriteDataListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouriteDataListImplToJson(
      this,
    );
  }
}

abstract class _FavouriteDataList implements FavouriteDataList {
  factory _FavouriteDataList(
      {@JsonKey(name: '_id') final String id,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'image') final String image,
      @JsonKey(name: 'country') final String country,
      @JsonKey(name: 'city') final String city,
      @JsonKey(name: 'pricePerPerson') final String pricePerPerson,
      @JsonKey(name: 'currency') final String currency,
      @JsonKey(name: 'category') final String category,
      @JsonKey(name: 'userId') final String userid}) = _$FavouriteDataListImpl;

  factory _FavouriteDataList.fromJson(Map<String, dynamic> json) =
      _$FavouriteDataListImpl.fromJson;

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
  @JsonKey(name: 'userId')
  String get userid;
  @override
  @JsonKey(ignore: true)
  _$$FavouriteDataListImplCopyWith<_$FavouriteDataListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
