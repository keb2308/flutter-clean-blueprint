import 'package:clean_auth/src/application/profile/interfaces/i_user_repository.dart';
import 'package:clean_auth/src/application/shared/use_case.dart';

class GetUserUseCase implements UseCase<NoParams> {
  final IUserRepository repository;

  GetUserUseCase({required this.repository});

  @override
  Future<void> call(_) async {
    return repository.getUser();
  }
}
