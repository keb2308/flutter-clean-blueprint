import 'package:auto_route/auto_route.dart';
import 'package:clean_auth/src/application/auth/blocs/auth_cubit.dart';
import 'package:clean_auth/src/presentation/auth/widgets/authentication_button.dart';
import 'package:clean_auth/src/presentation/auth/widgets/email_form_field.dart';
import 'package:clean_auth/src/presentation/auth/widgets/password_form_field.dart';
import 'package:clean_auth/src/presentation/shared/app_bar_unauthorized.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'SignUpRoute')
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _SignUpPage();
  }
}

class _SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarUnauthorized(
        title: "Sign Up",
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(child: _SignUpForm()),
        ),
      ),
    );
  }
}

class _SignUpForm extends StatefulWidget {
  @override
  State<_SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<_SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          EmailFormField(controller: _emailController),
          const SizedBox(height: 20),
          PasswordFormField(controller: _passwordController),
          const SizedBox(height: 40),
          AuthenticationButton(
            label: 'Sign Up',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.read<AuthCubit>().signUp(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
              } else {
                _emailController.clear();
                _passwordController.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}
