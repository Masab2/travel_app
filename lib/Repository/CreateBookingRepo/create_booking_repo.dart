
import 'dart:developer';

import 'package:travel_app/Model/CreateBookingModel/create_booking_model.dart';
import 'package:travel_app/config/AppUrl/AppUrl.dart';
import 'package:travel_app/data/Network/NetworkApiServices.dart';
part './create_booking_http_repo.dart';

abstract class CreateBookingRepo {
  Future<CreateBookingModel> createBookingApi(data);
}