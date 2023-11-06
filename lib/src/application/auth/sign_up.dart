import 'package:clean_auth/src/application/auth/interfaces/i_authentication_repository.dart';
import 'package:clean_auth/src/application/shared/use_case.dart';

class SignUp implements UseCase<SignUpArgs> {
  final IAuthenticationRepository repository;
  SignUpArgs? arguments;

  SignUp({required this.repository});

  @override
  Future<void> call(SignUpArgs params) async {
    arguments = params;
    return repository.signUp(
      email: params.email,
      password: params.password,
    );
  }
}

class SignUpArgs {
  final String email;
  final String password;

  SignUpArgs({required this.email, required this.password});
}
