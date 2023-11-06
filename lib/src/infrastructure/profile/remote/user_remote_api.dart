import 'dart:io';

import 'package:clean_auth/src/domain/shared/failures.dart';
import 'package:clean_auth/src/infrastructure/auth/data_sources/local/tokens_local_storage.dart';
import 'package:clean_auth/src/infrastructure/profile/models/user_dto.dart';
import 'package:dio/dio.dart';

class UserRemoteApi {
  final path = "/v1/accounts:lookup";
  final TokensLocalStorage tokensDataSource;
  final Dio dio;

  UserRemoteApi({required this.tokensDataSource, required this.dio});

  Future<UserDTO> getUser() async {
    try {
      final response = await dio.post(path, data: {});
      if (response.statusCode == 200) {
        final body = response.data;
        // not sure why we get a list of users, should always contain 1 user
        final user = UserDTO.fromJson(body['users'][0]);
        return user;
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
