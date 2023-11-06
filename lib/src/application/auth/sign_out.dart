import 'package:clean_auth/src/application/auth/interfaces/i_authentication_repository.dart';
import 'package:clean_auth/src/application/shared/use_case.dart';

class SignOut implements UseCase<NoParams> {
  final IAuthenticationRepository repository;

  SignOut({required this.repository});

  @override
  Future<void> call(_) async {
    return repository.signOut();
  }
}
