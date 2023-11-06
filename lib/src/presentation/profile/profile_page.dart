import 'package:auto_route/auto_route.dart';
import 'package:clean_auth/injection_container.dart' as di;
import 'package:clean_auth/src/application/auth/blocs/auth_cubit.dart';
import 'package:clean_auth/src/presentation/auth/widgets/authentication_button.dart';
import 'package:clean_auth/src/presentation/profile/bloc/profile_page_cubit.dart';
import 'package:clean_auth/src/presentation/profile/bloc/profile_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'ProfileRoute')
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di.getIt<ProfilePageCubit>()..getUser(),
      child: const _ProfilePage(),
    );
  }
}

class _ProfilePage extends StatelessWidget {
  const _ProfilePage();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProfilePageCubit>().state;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              (state is ProfilePageLoadedState)
                  ? "Email: ${state.user.email}"
                  : "Email:",
              style: const TextStyle(fontSize: 24),
            ),
            AuthenticationButton(
              label: 'Logout',
              onPressed: () {
                context.read<AuthCubit>().signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
