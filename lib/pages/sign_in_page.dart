import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:telegram_app/widgets/connectivity_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_signin_button/button_view.dart';

class SignInPage extends ConnectivityWidget {
  const SignInPage({super.key});

  @override
  Widget connectedBuild(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)?.title_sign_in ?? ''),
          automaticallyImplyLeading: false,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _emailField(context),
            _passwordField(context),
            _signInButton(context),
            _orDivider(context),
            _googleLoginButton(context),
            const Divider(),
            _signUpButton(context),
            _progress(),
          ],
        ),
      );

  Widget _emailField(BuildContext context) => TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: AppLocalizations.of(context)?.label_email,
        ),
      );

  Widget _passwordField(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context)?.label_password,
          ),
        ),
      );

  Widget _signInButton(BuildContext context) => ElevatedButton(
      onPressed: () {},
      child: Text(AppLocalizations.of(context)?.action_login ?? ''));

  Widget _signUpButton(BuildContext context) => ElevatedButton(
      onPressed: () {},
      child: Text(AppLocalizations.of(context)?.action_sign_up ?? ''));

  Widget _googleLoginButton(BuildContext context) => SignInButton(
        Buttons.Google,
        onPressed: () {},
      );

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
}
