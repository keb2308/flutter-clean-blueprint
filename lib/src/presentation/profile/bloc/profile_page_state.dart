import 'package:clean_auth/src/domain/profile/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/profile_page_state.freezed.dart';

@freezed
abstract class ProfilePageState with _$ProfilePageState {
  const factory ProfilePageState.initial() = ProfilePageInitialState;

  const factory ProfilePageState.loading() = ProfilePageLoadingState;

  const factory ProfilePageState.loaded({
    required User user,
  }) = ProfilePageLoadedState;
}
