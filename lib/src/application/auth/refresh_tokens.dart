import 'package:clean_auth/src/application/auth/interfaces/i_authentication_repository.dart';
import 'package:clean_auth/src/application/shared/use_case.dart';

class RefreshTokens implements UseCase<NoParams> {
  final IAuthenticationRepository repository;

  RefreshTokens({required this.repository});

  @override
  Future<void> call(_) async {
    return repository.refreshTokens();
  }
}
