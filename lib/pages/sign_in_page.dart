import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:telegram_app/widgets/connectivity_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_signin_button/button_view.dart';

import '../blocs/sign_in/sign_in_bloc.dart';

class SignInPage extends ConnectivityWidget implements AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => SignInBloc(
          authenticationRepository: context.read(),
        ),
        child: this,
      );
  const SignInPage({super.key});

  @override
  Widget connectedBuild(_) => BlocConsumer<SignInBloc, SignInState>(
      builder: (context, state) => Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)?.title_sign_in ?? ''),
              automaticallyImplyLeading: false,
            ),
            body: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _emailField(context, enabled: state is! SigningInState),
                _passwordField(context, enabled: state is! SigningInState),
                _signInButton(context, enabled: state is! SigningInState),
                if (state is! SigningInState) _orDivider(context),
                _googleLoginButton(context, enabled: state is! SigningInState),
                const Divider(),
                _signUpButton(context, enabled: state is! SigningInState),
                if (state is SigningInState) _progress(),
              ],
            ),
          ),
      listener: (context, state) {
        _shouldCloseForSignIn(context, state: state);
        _shouldShowErrorSignInDialog(context, state: state);
      });

  Widget _emailField(BuildContext context, {bool enabled = true}) => TextField(
        enabled: enabled,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: AppLocalizations.of(context)?.label_email,
        ),
      );

  Widget _passwordField(BuildContext context, {bool enabled = true}) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: TextField(
          enabled: enabled,
          obscureText: true,
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context)?.label_password,
          ),
        ),
      );

  Widget _signInButton(BuildContext context, {bool enabled = true}) =>
      ElevatedButton(
          onPressed: enabled ? () {} : null,
          child: Text(AppLocalizations.of(context)?.action_login ?? ''));

  Widget _signUpButton(BuildContext context, {bool enabled = true}) =>
      ElevatedButton(
          onPressed: enabled ? () {} : null,
          child: Text(AppLocalizations.of(context)?.action_sign_up ?? ''));

  Widget _googleLoginButton(BuildContext context, {bool enabled = true}) =>
      enabled
          ? SignInButton(
              Buttons.Google,
              onPressed: () {},
            )
          : Container();

  Widget _orDivider(BuildContext context) {
    const divider = Expanded(
        child: Divider(
      height: 0,
    ));
    return Row(
      children: [
        divider,
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(AppLocalizations.of(context)?.label_or ?? '')),
        divider,
      ],
    );
  }

  Widget _progress() => const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(child: CircularProgressIndicator()),
      );

  void _shouldCloseForSignIn(BuildContext context,
      {required SignInState state}) {
    if (WidgetsBinding.instance != null) {
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        if (state is SuccessSignInState) {
          context.router.popUntilRoot();
        }
      });
    }
  }

  void _shouldShowErrorSignInDialog(BuildContext context,
      {required SignInState state}) {
    if (state is ErrorSignInState) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
              AppLocalizations.of(context)?.dialog_wrong_login_title ?? ''),
          content: Text(
              AppLocalizations.of(context)?.dialog_wrong_login_message ?? ''),
          actions: [
            TextButton(
              onPressed: () => context.router.pop(),
              child: Text(AppLocalizations.of(context)?.action_ok ?? ''),
            )
          ],
        ),
      );
    }
  }
}
