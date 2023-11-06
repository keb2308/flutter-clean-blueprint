import 'package:clean_auth/src/domain/shared/failures.dart';
import 'package:clean_auth/src/infrastructure/auth/models/tokens_dto.dart';
import 'package:dio/dio.dart';

class TokensRemoteApi {
  final path = "/v1/token";
  final Dio dio;

  TokensRemoteApi({required this.dio});

  Future<TokensDTO> refreshTokens({
    required String refreshToken,
  }) async {
    final body = {
      'grant_type': 'refresh_token',
      'refresh_token': refreshToken,
    };
    final response = await dio.post(path, data: body);
    if (response.statusCode == 200) {
      // usually the firebase api returns data using camelCase,
      // but here they made a mistake and used underscore
      return TokensDTO(
        idToken: response.data['id_token'],
        refreshToken: response.data['refresh_token'],
      );
    }
    throw HttpFailure(
      code: response.statusCode,
      message: response.statusMessage,
    );
  }
}
