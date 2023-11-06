import 'package:clean_auth/src/domain/shared/failures.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';

const kAccessTokenKey = "access_token_key";
const kRefreshTokenKey = "refresh_token_key";

class TokensLocalStorage {
  var logger = Logger();
  static const storage = FlutterSecureStorage();
  AndroidOptions _secureOption() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  String? _inMemoryAccessToken;
  String? _inMemoryRefreshToken;

  Future<void> setAccessToken({required String token}) async {
    await storage.write(
      key: kAccessTokenKey,
      value: token,
      aOptions: _secureOption(),
    );
    _inMemoryAccessToken = token;
  }

  Future<void> setRefreshToken({required String token}) async {
    await storage.write(
      key: kRefreshTokenKey,
      value: token,
      aOptions: _secureOption(),
    );
    _inMemoryRefreshToken = token;
  }

  Future<String?> getAccessToken() async {
    if (_inMemoryAccessToken != null) return _inMemoryAccessToken!;
    final token = await storage.read(
      key: kAccessTokenKey,
      aOptions: _secureOption(),
    );
    return token;
  }

  Future<String?> getRefreshToken() async {
    if (_inMemoryRefreshToken != null) return _inMemoryRefreshToken!;
    final token = await storage.read(
      key: kRefreshTokenKey,
      aOptions: _secureOption(),
    );
    if (token == null) throw UnexpectedFailure();
    return token;
  }

  Future<void> signOut() async {
    await storage.delete(
      key: kAccessTokenKey,
      aOptions: _secureOption(),
    );
    await storage.delete(
      key: kRefreshTokenKey,
      aOptions: _secureOption(),
    );
    _inMemoryAccessToken = null;
    _inMemoryRefreshToken = null;
  }
}
