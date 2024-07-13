// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBookingModel _$CreateBookingModelFromJson(Map<String, dynamic> json) {
  return _CreateBookingModel.fromJson(json);
}

/// @nodoc
mixin _$CreateBookingModel {
  @JsonKey(name: 'Status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'bookingId')
  String? get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  CreateBookingData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBookingModelCopyWith<CreateBookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBookingModelCopyWith<$Res> {
  factory $CreateBookingModelCopyWith(
          CreateBookingModel value, $Res Function(CreateBookingModel) then) =
      _$CreateBookingModelCopyWithImpl<$Res, CreateBookingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'bookingId') String? bookingId,
      @JsonKey(name: 'data') CreateBookingData? data});

  $CreateBookingDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateBookingModelCopyWithImpl<$Res, $Val extends CreateBookingModel>
    implements $CreateBookingModelCopyWith<$Res> {
  _$CreateBookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? bookingId = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateBookingData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateBookingDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CreateBookingDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateBookingModelImplCopyWith<$Res>
    implements $CreateBookingModelCopyWith<$Res> {
  factory _$$CreateBookingModelImplCopyWith(_$CreateBookingModelImpl value,
          $Res Function(_$CreateBookingModelImpl) then) =
      __$$CreateBookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'bookingId') String? bookingId,
      @JsonKey(name: 'data') CreateBookingData? data});

  @override
  $CreateBookingDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateBookingModelImplCopyWithImpl<$Res>
    extends _$CreateBookingModelCopyWithImpl<$Res, _$CreateBookingModelImpl>
    implements _$$CreateBookingModelImplCopyWith<$Res> {
  __$$CreateBookingModelImplCopyWithImpl(_$CreateBookingModelImpl _value,
      $Res Function(_$CreateBookingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? bookingId = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateBookingModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateBookingData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBookingModelImpl implements _CreateBookingModel {
  _$CreateBookingModelImpl(
      {@JsonKey(name: 'Status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'bookingId') this.bookingId,
      @JsonKey(name: 'data') this.data});

  factory _$CreateBookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBookingModelImplFromJson(json);

  @override
  @JsonKey(name: 'Status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'bookingId')
  final String? bookingId;
  @override
  @JsonKey(name: 'data')
  final CreateBookingData? data;

  @override
  String toString() {
    return 'CreateBookingModel(status: $status, message: $message, bookingId: $bookingId, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookingModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, bookingId, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookingModelImplCopyWith<_$CreateBookingModelImpl> get copyWith =>
      __$$CreateBookingModelImplCopyWithImpl<_$CreateBookingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBookingModelImplToJson(
      this,
    );
  }
}

abstract class _CreateBookingModel implements CreateBookingModel {
  factory _CreateBookingModel(
          {@JsonKey(name: 'Status') final bool? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'bookingId') final String? bookingId,
          @JsonKey(name: 'data') final CreateBookingData? data}) =
      _$CreateBookingModelImpl;

  factory _CreateBookingModel.fromJson(Map<String, dynamic> json) =
      _$CreateBookingModelImpl.fromJson;

  @override
  @JsonKey(name: 'Status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'bookingId')
  String? get bookingId;
  @override
  @JsonKey(name: 'data')
  CreateBookingData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateBookingModelImplCopyWith<_$CreateBookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateBookingData _$CreateBookingDataFromJson(Map<String, dynamic> json) {
  return _CreateBookingData.fromJson(json);
}

/// @nodoc
mixin _$CreateBookingData {
  @JsonKey(name: 'persons')
  String? get persons => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'placeId')
  String? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get placeTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get placeDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get placeImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get placeCountry => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String? get placeCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricePerPerson')
  String? get pricePerPerson => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency')
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'bestDestination')
  String? get bestDestination => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkInDate')
  String? get checkInDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkOutDate')
  String? get checkOutDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalAmount')
  String? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get bookingDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBookingDataCopyWith<CreateBookingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBookingDataCopyWith<$Res> {
  factory $CreateBookingDataCopyWith(
          CreateBookingData value, $Res Function(CreateBookingData) then) =
      _$CreateBookingDataCopyWithImpl<$Res, CreateBookingData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'persons') String? persons,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'placeId') String? placeId,
      @JsonKey(name: 'title') String? placeTitle,
      @JsonKey(name: 'description') String? placeDescription,
      @JsonKey(name: 'image') String? placeImage,
      @JsonKey(name: 'country') String? placeCountry,
      @JsonKey(name: 'city') String? placeCity,
      @JsonKey(name: 'pricePerPerson') String? pricePerPerson,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'bestDestination') String? bestDestination,
      @JsonKey(name: 'checkInDate') String? checkInDate,
      @JsonKey(name: 'checkOutDate') String? checkOutDate,
      @JsonKey(name: 'totalAmount') String? totalAmount,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'date') String? bookingDate});
}

/// @nodoc
class _$CreateBookingDataCopyWithImpl<$Res, $Val extends CreateBookingData>
    implements $CreateBookingDataCopyWith<$Res> {
  _$CreateBookingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? persons = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? userId = freezed,
    Object? placeId = freezed,
    Object? placeTitle = freezed,
    Object? placeDescription = freezed,
    Object? placeImage = freezed,
    Object? placeCountry = freezed,
    Object? placeCity = freezed,
    Object? pricePerPerson = freezed,
    Object? currency = freezed,
    Object? category = freezed,
    Object? bestDestination = freezed,
    Object? checkInDate = freezed,
    Object? checkOutDate = freezed,
    Object? totalAmount = freezed,
    Object? email = freezed,
    Object? bookingDate = freezed,
  }) {
    return _then(_value.copyWith(
      persons: freezed == persons
          ? _value.persons
          : persons // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      placeTitle: freezed == placeTitle
          ? _value.placeTitle
          : placeTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      placeDescription: freezed == placeDescription
          ? _value.placeDescription
          : placeDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      placeImage: freezed == placeImage
          ? _value.placeImage
          : placeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      placeCountry: freezed == placeCountry
          ? _value.placeCountry
          : placeCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      placeCity: freezed == placeCity
          ? _value.placeCity
          : placeCity // ignore: cast_nullable_to_non_nullable
              as String?,
      pricePerPerson: freezed == pricePerPerson
          ? _value.pricePerPerson
          : pricePerPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      bestDestination: freezed == bestDestination
          ? _value.bestDestination
          : bestDestination // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInDate: freezed == checkInDate
          ? _value.checkInDate
          : checkInDate // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOutDate: freezed == checkOutDate
          ? _value.checkOutDate
          : checkOutDate // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingDate: freezed == bookingDate
          ? _value.bookingDate
          : bookingDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBookingDataImplCopyWith<$Res>
    implements $CreateBookingDataCopyWith<$Res> {
  factory _$$CreateBookingDataImplCopyWith(_$CreateBookingDataImpl value,
          $Res Function(_$CreateBookingDataImpl) then) =
      __$$CreateBookingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'persons') String? persons,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'placeId') String? placeId,
      @JsonKey(name: 'title') String? placeTitle,
      @JsonKey(name: 'description') String? placeDescription,
      @JsonKey(name: 'image') String? placeImage,
      @JsonKey(name: 'country') String? placeCountry,
      @JsonKey(name: 'city') String? placeCity,
      @JsonKey(name: 'pricePerPerson') String? pricePerPerson,
      @JsonKey(name: 'currency') String? currency,
      @JsonKey(name: 'category') String? category,
      @JsonKey(name: 'bestDestination') String? bestDestination,
      @JsonKey(name: 'checkInDate') String? checkInDate,
      @JsonKey(name: 'checkOutDate') String? checkOutDate,
      @JsonKey(name: 'totalAmount') String? totalAmount,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'date') String? bookingDate});
}

/// @nodoc
class __$$CreateBookingDataImplCopyWithImpl<$Res>
    extends _$CreateBookingDataCopyWithImpl<$Res, _$CreateBookingDataImpl>
    implements _$$CreateBookingDataImplCopyWith<$Res> {
  __$$CreateBookingDataImplCopyWithImpl(_$CreateBookingDataImpl _value,
      $Res Function(_$CreateBookingDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? persons = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? userId = freezed,
    Object? placeId = freezed,
    Object? placeTitle = freezed,
    Object? placeDescription = freezed,
    Object? placeImage = freezed,
    Object? placeCountry = freezed,
    Object? placeCity = freezed,
    Object? pricePerPerson = freezed,
    Object? currency = freezed,
    Object? category = freezed,
    Object? bestDestination = freezed,
    Object? checkInDate = freezed,
    Object? checkOutDate = freezed,
    Object? totalAmount = freezed,
    Object? email = freezed,
    Object? bookingDate = freezed,
  }) {
    return _then(_$CreateBookingDataImpl(
      persons: freezed == persons
          ? _value.persons
          : persons // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      placeTitle: freezed == placeTitle
          ? _value.placeTitle
          : placeTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      placeDescription: freezed == placeDescription
          ? _value.placeDescription
          : placeDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      placeImage: freezed == placeImage
          ? _value.placeImage
          : placeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      placeCountry: freezed == placeCountry
          ? _value.placeCountry
          : placeCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      placeCity: freezed == placeCity
          ? _value.placeCity
          : placeCity // ignore: cast_nullable_to_non_nullable
              as String?,
      pricePerPerson: freezed == pricePerPerson
          ? _value.pricePerPerson
          : pricePerPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      bestDestination: freezed == bestDestination
          ? _value.bestDestination
          : bestDestination // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInDate: freezed == checkInDate
          ? _value.checkInDate
          : checkInDate // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOutDate: freezed == checkOutDate
          ? _value.checkOutDate
          : checkOutDate // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingDate: freezed == bookingDate
          ? _value.bookingDate
          : bookingDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBookingDataImpl implements _CreateBookingData {
  _$CreateBookingDataImpl(
      {@JsonKey(name: 'persons') this.persons = '0',
      @JsonKey(name: 'address') this.address = '',
      @JsonKey(name: 'phone') this.phone = '',
      @JsonKey(name: 'userId') this.userId = '',
      @JsonKey(name: 'placeId') this.placeId = '',
      @JsonKey(name: 'title') this.placeTitle = '',
      @JsonKey(name: 'description') this.placeDescription = '',
      @JsonKey(name: 'image') this.placeImage = '',
      @JsonKey(name: 'country') this.placeCountry = '',
      @JsonKey(name: 'city') this.placeCity = '',
      @JsonKey(name: 'pricePerPerson') this.pricePerPerson = '',
      @JsonKey(name: 'currency') this.currency = '',
      @JsonKey(name: 'category') this.category = '',
      @JsonKey(name: 'bestDestination') this.bestDestination = '',
      @JsonKey(name: 'checkInDate') this.checkInDate = '',
      @JsonKey(name: 'checkOutDate') this.checkOutDate = '',
      @JsonKey(name: 'totalAmount') this.totalAmount = '',
      @JsonKey(name: 'email') this.email = '',
      @JsonKey(name: 'date') this.bookingDate = ''});

  factory _$CreateBookingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBookingDataImplFromJson(json);

  @override
  @JsonKey(name: 'persons')
  final String? persons;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'placeId')
  final String? placeId;
  @override
  @JsonKey(name: 'title')
  final String? placeTitle;
  @override
  @JsonKey(name: 'description')
  final String? placeDescription;
  @override
  @JsonKey(name: 'image')
  final String? placeImage;
  @override
  @JsonKey(name: 'country')
  final String? placeCountry;
  @override
  @JsonKey(name: 'city')
  final String? placeCity;
  @override
  @JsonKey(name: 'pricePerPerson')
  final String? pricePerPerson;
  @override
  @JsonKey(name: 'currency')
  final String? currency;
  @override
  @JsonKey(name: 'category')
  final String? category;
  @override
  @JsonKey(name: 'bestDestination')
  final String? bestDestination;
  @override
  @JsonKey(name: 'checkInDate')
  final String? checkInDate;
  @override
  @JsonKey(name: 'checkOutDate')
  final String? checkOutDate;
  @override
  @JsonKey(name: 'totalAmount')
  final String? totalAmount;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'date')
  final String? bookingDate;

  @override
  String toString() {
    return 'CreateBookingData(persons: $persons, address: $address, phone: $phone, userId: $userId, placeId: $placeId, placeTitle: $placeTitle, placeDescription: $placeDescription, placeImage: $placeImage, placeCountry: $placeCountry, placeCity: $placeCity, pricePerPerson: $pricePerPerson, currency: $currency, category: $category, bestDestination: $bestDestination, checkInDate: $checkInDate, checkOutDate: $checkOutDate, totalAmount: $totalAmount, email: $email, bookingDate: $bookingDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookingDataImpl &&
            (identical(other.persons, persons) || other.persons == persons) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.placeTitle, placeTitle) ||
                other.placeTitle == placeTitle) &&
            (identical(other.placeDescription, placeDescription) ||
                other.placeDescription == placeDescription) &&
            (identical(other.placeImage, placeImage) ||
                other.placeImage == placeImage) &&
            (identical(other.placeCountry, placeCountry) ||
                other.placeCountry == placeCountry) &&
            (identical(other.placeCity, placeCity) ||
                other.placeCity == placeCity) &&
            (identical(other.pricePerPerson, pricePerPerson) ||
                other.pricePerPerson == pricePerPerson) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.bestDestination, bestDestination) ||
                other.bestDestination == bestDestination) &&
            (identical(other.checkInDate, checkInDate) ||
                other.checkInDate == checkInDate) &&
            (identical(other.checkOutDate, checkOutDate) ||
                other.checkOutDate == checkOutDate) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.bookingDate, bookingDate) ||
                other.bookingDate == bookingDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        persons,
        address,
        phone,
        userId,
        placeId,
        placeTitle,
        placeDescription,
        placeImage,
        placeCountry,
        placeCity,
        pricePerPerson,
        currency,
        category,
        bestDestination,
        checkInDate,
        checkOutDate,
        totalAmount,
        email,
        bookingDate
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookingDataImplCopyWith<_$CreateBookingDataImpl> get copyWith =>
      __$$CreateBookingDataImplCopyWithImpl<_$CreateBookingDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBookingDataImplToJson(
      this,
    );
  }
}

abstract class _CreateBookingData implements CreateBookingData {
  factory _CreateBookingData(
          {@JsonKey(name: 'persons') final String? persons,
          @JsonKey(name: 'address') final String? address,
          @JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'userId') final String? userId,
          @JsonKey(name: 'placeId') final String? placeId,
          @JsonKey(name: 'title') final String? placeTitle,
          @JsonKey(name: 'description') final String? placeDescription,
          @JsonKey(name: 'image') final String? placeImage,
          @JsonKey(name: 'country') final String? placeCountry,
          @JsonKey(name: 'city') final String? placeCity,
          @JsonKey(name: 'pricePerPerson') final String? pricePerPerson,
          @JsonKey(name: 'currency') final String? currency,
          @JsonKey(name: 'category') final String? category,
          @JsonKey(name: 'bestDestination') final String? bestDestination,
          @JsonKey(name: 'checkInDate') final String? checkInDate,
          @JsonKey(name: 'checkOutDate') final String? checkOutDate,
          @JsonKey(name: 'totalAmount') final String? totalAmount,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'date') final String? bookingDate}) =
      _$CreateBookingDataImpl;

  factory _CreateBookingData.fromJson(Map<String, dynamic> json) =
      _$CreateBookingDataImpl.fromJson;

  @override
  @JsonKey(name: 'persons')
  String? get persons;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'placeId')
  String? get placeId;
  @override
  @JsonKey(name: 'title')
  String? get placeTitle;
  @override
  @JsonKey(name: 'description')
  String? get placeDescription;
  @override
  @JsonKey(name: 'image')
  String? get placeImage;
  @override
  @JsonKey(name: 'country')
  String? get placeCountry;
  @override
  @JsonKey(name: 'city')
  String? get placeCity;
  @override
  @JsonKey(name: 'pricePerPerson')
  String? get pricePerPerson;
  @override
  @JsonKey(name: 'currency')
  String? get currency;
  @override
  @JsonKey(name: 'category')
  String? get category;
  @override
  @JsonKey(name: 'bestDestination')
  String? get bestDestination;
  @override
  @JsonKey(name: 'checkInDate')
  String? get checkInDate;
  @override
  @JsonKey(name: 'checkOutDate')
  String? get checkOutDate;
  @override
  @JsonKey(name: 'totalAmount')
  String? get totalAmount;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'date')
  String? get bookingDate;
  @override
  @JsonKey(ignore: true)
  _$$CreateBookingDataImplCopyWith<_$CreateBookingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
