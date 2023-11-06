import 'package:clean_auth/src/application/profile/interfaces/i_user_repository.dart';
import 'package:clean_auth/src/domain/shared/failures.dart';
import 'package:clean_auth/src/infrastructure/profile/models/extensions/user_dto_x.dart';
import 'package:clean_auth/src/infrastructure/profile/remote/user_remote_api.dart';
import 'package:logger/logger.dart';

class UserRepository extends IUserRepository {
  var logger = Logger();
  final UserRemoteApi userDataSource;

  UserRepository({
    required this.userDataSource,
  });

  @override
  Future<void> getUser() async {
    try {
      final userDTO = await userDataSource.getUser();
      final user = userDTO.toDomain();
      addToStream(user: user);
    } catch (e) {
      addFailureToStream(failure: NoInternetFailure());
    }
  }
}
