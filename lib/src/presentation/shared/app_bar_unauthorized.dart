import 'package:clean_auth/src/application/auth/blocs/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//@RoutePage(name: 'AppBarUnauth')
class AppBarUnauthorized extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;

  const AppBarUnauthorized({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthCubit>().state;
    final isLoading = state.maybeWhen<bool>(
      loading: () => true,
      orElse: () => false,
    );

    return AppBar(
      backgroundColor: Colors.blue,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
      bottom: isLoading ? _createProgressIndicator() : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  PreferredSize _createProgressIndicator() => const PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: SizedBox(
          height: 52,
          child: LinearProgressIndicator(
            color: Colors.blue,
          ),
        ),
      );
}
