import 'package:flutter/material.dart';
import 'package:telegram_app/widgets/connectivity_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignInPage extends ConnectivityWidget {
  const SignInPage({super.key});

  @override
  Widget connectedBuild(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)?.title_sign_in ?? ''),
          automaticallyImplyLeading: false,
        ),
      );
}
