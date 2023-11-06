abstract class Failure {}

class HttpFailure extends Failure {
  final int? code;
  final String? message;
  HttpFailure({required this.code, this.message});
}

class NoInternetFailure extends Failure {}

class NoServiceFoundFailure extends Failure {}

class RefreshTokensFailure extends Failure {}

class UnexpectedFailure extends Failure {}

class RetryFailure extends Failure {}
