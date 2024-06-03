import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Model/ProfileModel/profile_model.dart';
import 'package:travel_app/Repository/ProfileRepo/profile_repo.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepo profileRepo;
  ProfileBloc({required this.profileRepo}) : super(ProfileInitialState()) {
    on<ProfileLoadedEvent>((event, emit) async {
      try {
        emit(ProfileLoadingState());
        final data = await profileRepo.profileApi();
        log(data.data?.email ?? "");
        emit(ProfileCompletedState(model: data));
      } catch (e) {
        emit(ProfileErrorState(message: e.toString()));
      }
    });
  }
}
