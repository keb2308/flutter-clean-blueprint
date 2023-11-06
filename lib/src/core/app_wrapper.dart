import 'package:auto_route/auto_route.dart';
import 'package:clean_auth/injection_container.dart' as di;
import 'package:clean_auth/src/application/auth/blocs/auth_cubit.dart';
import 'package:clean_auth/src/application/auth/blocs/auth_states.dart';
import 'package:clean_auth/src/application/connectivity/blocs/connectivity_cubit.dart';
import 'package:clean_auth/src/application/connectivity/blocs/connectivity_states.dart';
import 'package:clean_auth/src/core/routing/app_router.dart';
import 'package:clean_auth/src/presentation/shared/no_internet_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

@RoutePage(name: 'ApplicationWrapper')
class AppWrapper extends StatelessWidget {
  const AppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => di.getIt<ConnectivityCubit>(),
        ),
        BlocProvider(
          create: (_) => di.getIt<AuthCubit>()..refreshTokens(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<ConnectivityCubit, ConnectivityState>(
            listener: (context, state) {
              state.whenOrNull(
                disconnected: () => showDialog(
                  context: context,
                  builder: (_) => BlocProvider.value(
                    value: BlocProvider.of<ConnectivityCubit>(context),
                    child: const NoInternetDialog(),
                  ),
                ),
              );
            },
          ),
          BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              state.whenOrNull(
                authenticated: () {
                  context.router.replaceAll([const AppBarAuth()]);
                  FlutterNativeSplash.remove();
                },
                unauthenticated: () {
                  context.router.replaceAll([const SignInRoute()]);
                  FlutterNativeSplash.remove();
                },
              );
            },
          ),
        ],
        child: const AutoRouter(),
      ),
    );
  }
}
