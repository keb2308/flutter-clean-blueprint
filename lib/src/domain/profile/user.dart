import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String email,
  }) = _User;
}
