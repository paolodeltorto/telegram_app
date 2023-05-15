import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          padding: const EdgeInsets.all(32),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _sliderContainer(context),
              _startMessagingButton(context),
            ],
          ),
        ),
      );

  Widget _sliderContainer(BuildContext context) => Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _slides(context),
            _indicator(),
          ],
        ),
      );

  Widget _slides(BuildContext context) => Container(
        height: 300,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: FaIcon(
                  FontAwesomeIcons.telegram,
                  size: 128,
                  color: Colors.cyan,
                )),
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        'Telegram',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            'L\'app di messagistica più veloce al mondo. E\' gratuita e sicura'),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      );

  Widget _indicator() => Container();

  Widget _startMessagingButton(BuildContext context) => ElevatedButton(
        onPressed: () {},
        child: Text(AppLocalizations.of(context)?.action_start_chatting ?? ''),
      );
}
