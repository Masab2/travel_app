import 'package:travel_app/Model/ProfileModel/profile_model.dart';

abstract  class ProfileRepo{
  Future<ProfileModel> profileApi();
}