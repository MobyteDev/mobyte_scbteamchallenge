part of 'profile_page_bloc.dart';

@freezed
class ProfilePageState with _$ProfilePageState {
   const factory ProfilePageState({
    required UserModel user,
  }) = _ProfilePageState;

  const factory ProfilePageState.initial({required UserModel user}) = _Initial;
}
