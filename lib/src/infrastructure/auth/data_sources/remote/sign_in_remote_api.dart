import 'dart:io';

import 'package:clean_auth/src/domain/shared/failures.dart';
import 'package:clean_auth/src/infrastructure/auth/models/tokens_dto.dart';
import 'package:dio/dio.dart';

class SignInRemoteApi {
  final path = "/v1/accounts:signInWithPassword";
  final Dio dio;

  SignInRemoteApi({required this.dio});

  Future<TokensDTO> signIn({
    required String email,
    required String password,
  }) async {
    final body = {
      'email': email,
      'password': password,
      'returnSecureToken': 'true',
    };

    try {
      final response = await dio.post(path, data: body);
      if (response.statusCode == 200) {
        return TokensDTO.fromJson(response.data);
      }
      throw HttpFailure(
        code: response.statusCode,
        message: response.statusMessage,
      );
    } on SocketException {
      throw NoInternetFailure();
    } on HttpException {
      throw NoServiceFoundFailure();
    }
  }
}
