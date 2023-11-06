import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/tokens_dto.freezed.dart';
part 'generated/tokens_dto.g.dart';

@freezed
class TokensDTO with _$TokensDTO {
  const factory TokensDTO({
    required String idToken,
    required String refreshToken,
  }) = _TokensDTO;

  factory TokensDTO.fromJson(Map<String, Object?> json) =>
      _$TokensDTOFromJson(json);
}
