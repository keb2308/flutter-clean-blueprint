import 'dart:async';

import 'package:clean_auth/src/application/profile/interfaces/i_user_repository.dart';
import 'package:clean_auth/src/application/shared/use_case.dart';
import 'package:clean_auth/src/domain/profile/user.dart';
import 'package:clean_auth/src/presentation/profile/bloc/profile_page_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class ProfilePageCubit extends Cubit<ProfilePageState> {
  var logger = Logger();
  final IUserRepository userRepository;
  final UseCase getUserUseCase;

  late final StreamSubscription<User> _userSubscription;

  ProfilePageCubit({
    required this.getUserUseCase,
    required this.userRepository,
  }) : super(const ProfilePageState.initial()) {
    logger.d('initialized');
    _subscribe();
  }

  void _subscribe() {
    _userSubscription = userRepository.user.listen(
      (user) => emit(ProfilePageState.loaded(user: user)),
    );
  }

  Future<void> getUser() async {
    emit(const ProfilePageState.loading());
    await getUserUseCase(NoParams());
  }

  @override
  Future<void> close() {
    logger.d('closed');
    _userSubscription.cancel();
    return super.close();
  }
}
