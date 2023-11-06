import 'package:clean_auth/src/domain/profile/user.dart';
import 'package:clean_auth/src/infrastructure/profile/models/user_dto.dart';

extension UserDTOX on UserDTO {
  User toDomain() {
    return User(
      email: email,
    );
  }
}
