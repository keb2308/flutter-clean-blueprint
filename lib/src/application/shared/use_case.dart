abstract class UseCase<Params> {
  Future<void> call(Params params);
}

class NoParams {}
