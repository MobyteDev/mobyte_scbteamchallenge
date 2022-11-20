import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/profile/models/enum_document_check.dart';
import 'package:mobyte_scbteamchallenge/models/user_model/user_model.dart';

part 'profile_page_event.dart';
part 'profile_page_state.dart';
part 'profile_page_bloc.freezed.dart';

@injectable
class ProfilePageBloc extends Bloc<ProfilePageEvent, ProfilePageState> {
  ProfilePageBloc()
      : super(
          const ProfilePageState(
            user: UserModel(
              id: -1,
              name: "Иван Иванов",
              email: "mobyte@mail.ru",
              password: "Locked",
              documents: DocumentsCheckEnum.needToUpload,
            ),
          ),
        ) {
    on<ProfilePageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
