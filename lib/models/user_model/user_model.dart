import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobyte_scbteamchallenge/presentation/pages/bottom_bar/bottom_pages/profile/models/enum_document_check.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String name,
    required String email,
    required String password,
    required DocumentsCheckEnum documents,
  }) = _UserModel;
}
