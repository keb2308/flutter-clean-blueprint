import 'package:auto_route/auto_route.dart';
import 'package:clean_auth/src/application/connectivity/blocs/connectivity_cubit.dart';
import 'package:clean_auth/src/application/connectivity/blocs/connectivity_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoInternetDialog extends StatelessWidget {
  const NoInternetDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityCubit, ConnectivityState>(
      listener: (context, state) {
        state.whenOrNull(
          connected: () {
            context.router.pop();
          },
        );
      },
      child: _NoInternetDialog(),
    );
  }
}

class _NoInternetDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Dialog.fullscreen(
      child: Center(
        child: Text(
          'No Internet',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
