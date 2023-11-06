import 'package:clean_auth/src/application/auth/blocs/auth_cubit.dart';
import 'package:clean_auth/src/application/auth/interfaces/i_authentication_repository.dart';
import 'package:clean_auth/src/application/auth/refresh_tokens.dart';
import 'package:clean_auth/src/application/auth/sign_in.dart';
import 'package:clean_auth/src/application/auth/sign_out.dart';
import 'package:clean_auth/src/application/auth/sign_up.dart';
import 'package:clean_auth/src/application/connectivity/interfaces/i_connectivity_broadcast.dart';
import 'package:clean_auth/src/application/profile/get_user_use_case.dart';
import 'package:clean_auth/src/application/profile/interfaces/i_user_repository.dart';
import 'package:clean_auth/src/infrastructure/auth/data_sources/local/tokens_local_storage.dart';
import 'package:clean_auth/src/infrastructure/auth/data_sources/remote/sign_in_remote_api.dart';
import 'package:clean_auth/src/infrastructure/auth/data_sources/remote/sign_up_remote_api.dart';
import 'package:clean_auth/src/infrastructure/auth/data_sources/remote/tokens_remote_api.dart';
import 'package:clean_auth/src/infrastructure/auth/repositories/authentication_repository.dart';
import 'package:clean_auth/src/infrastructure/connectivity/repositories/connectivity_broadcast.dart';
import 'package:clean_auth/src/infrastructure/profile/remote/user_remote_api.dart';
import 'package:clean_auth/src/infrastructure/profile/repositories/user_repository.dart';
import 'package:clean_auth/src/infrastructure/shared/access_token_interceptor.dart';
import 'package:clean_auth/src/infrastructure/shared/logging_interceptor.dart';
import 'package:clean_auth/src/presentation/profile/bloc/profile_page_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'src/application/connectivity/blocs/connectivity_cubit.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  // Cubits
  getIt.registerFactory<AuthCubit>(
    () => AuthCubit(
      authRepository: getIt(),
      signUpUseCase: getIt<SignUp>(),
      signInUseCase: getIt<SignIn>(),
      signOutUseCase: getIt<SignOut>(),
      refreshTokensUseCase: getIt<RefreshTokens>(),
    ),
  );

  getIt.registerFactory<ProfilePageCubit>(
    () => ProfilePageCubit(
      userRepository: getIt(),
      getUserUseCase: getIt<GetUserUseCase>(),
    ),
  );

  getIt.registerFactory<ConnectivityCubit>(
    () => ConnectivityCubit(
      connectivityBroadcast: getIt(),
    ),
  );

  // Use cases
  getIt.registerLazySingleton(() => SignUp(repository: getIt()));
  getIt.registerLazySingleton(() => SignIn(repository: getIt()));
  getIt.registerLazySingleton(() => SignOut(repository: getIt()));
  getIt.registerLazySingleton(() => RefreshTokens(repository: getIt()));
  getIt.registerLazySingleton(
    () => GetUserUseCase(
      repository: getIt(),
    ),
  );

  // Repositories
  getIt.registerLazySingleton<IAuthenticationRepository>(
    () => AuthenticationRepository(
      signInDataSource: getIt(),
      signUpDataSource: getIt(),
      refreshTokensDataSource: getIt(),
      tokensLocalDataSource: getIt(),
    ),
  );

  getIt.registerLazySingleton<IUserRepository>(
    () => UserRepository(userDataSource: getIt()),
  );

  getIt.registerLazySingleton<IConnectivityBroadcast>(
    () => ConnectivityBroadcast(
        connectionChecker: getIt<InternetConnectionCheckerPlus>()),
  );

  // Data sources
  // Local
  getIt.registerLazySingleton<TokensLocalStorage>(
    () => TokensLocalStorage(),
  );

  // Remote
  getIt.registerLazySingleton<SignInRemoteApi>(
    () => SignInRemoteApi(
      dio: getIt(instanceName: "unauthorized_dio"),
    ),
  );
  getIt.registerLazySingleton<SignUpRemoteApi>(
    () => SignUpRemoteApi(
      dio: getIt(instanceName: "unauthorized_dio"),
    ),
  );
  getIt.registerLazySingleton<TokensRemoteApi>(
    () => TokensRemoteApi(
      dio: getIt(instanceName: "unauthorized_dio"),
    ),
  );

  getIt.registerLazySingleton<UserRemoteApi>(
    () => UserRemoteApi(
      tokensDataSource: getIt(),
      dio: getIt(instanceName: "authorized_dio"),
    ),
  );

  // Other
  getIt.registerFactory<InternetConnectionCheckerPlus>(
    () => InternetConnectionCheckerPlus(),
  );

  getIt.registerFactory<AccessTokenInterceptor>(
    () => AccessTokenInterceptor(getIt()),
  );

  getIt.registerFactory<LoggingInterceptor>(
    () => LoggingInterceptor(),
  );

  // Dio Instances
  final queryParameters = {'key': 'AIzaSyB9MlVZHbGOmJ_YuZMxzbscsfpdTTxJkkc'};

  final unauthorizedDio = Dio(
    BaseOptions(
      baseUrl: "https://identitytoolkit.googleapis.com",
      queryParameters: queryParameters,
    ),
  );
  unauthorizedDio.interceptors.addAll([getIt<LoggingInterceptor>()]);

  getIt.registerLazySingleton(
    () => unauthorizedDio,
    instanceName: "unauthorized_dio",
  );

  final authorizedDio = Dio(
    BaseOptions(
      baseUrl: "https://identitytoolkit.googleapis.com",
      queryParameters: queryParameters,
    ),
  );
  authorizedDio.interceptors
      .addAll([getIt<AccessTokenInterceptor>(), getIt<LoggingInterceptor>()]);

  getIt.registerLazySingleton(
    () => authorizedDio,
    instanceName: "authorized_dio",
  );
}
