part of './create_booking_repo.dart';

class CreateBookingHttpRepo extends CreateBookingRepo {
  final _api = NetworkApiService();
  @override
  Future<CreateBookingModel> createBookingApi(data) async {
    final response = await _api.getPostApiResponse(
      AppUrl.createBookingUrl,
      data,
    );
    return CreateBookingModel.fromJson(response);
  }
}
