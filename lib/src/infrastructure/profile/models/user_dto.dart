import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user_dto.freezed.dart';
part 'generated/user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
    required String email,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, Object?> json) =>
      _$UserDTOFromJson(json);
}
