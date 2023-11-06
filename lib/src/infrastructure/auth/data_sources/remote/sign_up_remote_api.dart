import 'dart:io';

import 'package:clean_auth/src/domain/shared/failures.dart';
import 'package:clean_auth/src/infrastructure/auth/models/tokens_dto.dart';
import 'package:dio/dio.dart';

class SignUpRemoteApi {
  final path = "/v1/accounts:signUp";
  final Dio dio;

  SignUpRemoteApi({required this.dio});

  Future<TokensDTO> signUp({
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
      return TokensDTO.fromJson(response.data);
    } on DioException catch (err) {
      if (_noConnection(err)) {
        throw NoInternetFailure();
      } else {
        rethrow;
      }
    } on HttpException {
      throw NoServiceFoundFailure();
    }
  }
}

bool _noConnection(DioException err) {
  return err.type == DioExceptionType.connectionError &&
      err.error != null &&
      err.error is SocketException;
}
