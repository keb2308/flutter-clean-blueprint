import 'package:clean_auth/src/application/auth/interfaces/i_authentication_repository.dart';
import 'package:clean_auth/src/application/shared/use_case.dart';

class SignIn implements UseCase<SignInArgs> {
  final IAuthenticationRepository repository;
  SignInArgs? arguments;

  SignIn({required this.repository});

  @override
  Future<void> call(SignInArgs params) async {
    arguments = params;
    return repository.signIn(
      email: params.email,
      password: params.password,
    );
  }
}

class SignInArgs {
  final String email;
  final String password;

  SignInArgs({
    required this.email,
    required this.password,
  });
}
