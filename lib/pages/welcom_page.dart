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

  Widget _slides(BuildContext context) {
    final widgets = _items(context)
        .map((item) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  Flexible(flex: 1, fit: FlexFit.tight, child: item['image']),
                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            Text(
                              item['header'],
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(item['description']),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ))
        .toList(growable: false);
    return Container(
      height: 300,
      child: PageView.builder(
        itemBuilder: (context, index) => widgets[index],
        itemCount: widgets.length,
      ),
    );
  }

  Widget _indicator() => Container();

  Widget _startMessagingButton(BuildContext context) => ElevatedButton(
        onPressed: () {},
        child: Text(AppLocalizations.of(context)?.action_start_chatting ?? ''),
      );

  List _items(BuildContext context) => [
        {
          'image': const FaIcon(
            FontAwesomeIcons.telegram,
            size: 128,
            color: Colors.cyan,
          ),
          'header': AppLocalizations.of(context)?.welcome_header_1,
          'description': AppLocalizations.of(context)?.welcome_description_1,
        },
        {
          'image': const FaIcon(
            FontAwesomeIcons.rocketchat,
            size: 128,
            color: Colors.red,
          ),
          'header': AppLocalizations.of(context)?.welcome_header_2,
          'description': AppLocalizations.of(context)?.welcome_description_2,
        },
        {
          'image': const FaIcon(
            FontAwesomeIcons.commentDollar,
            size: 128,
            color: Colors.green,
          ),
          'header': AppLocalizations.of(context)?.welcome_header_3,
          'description': AppLocalizations.of(context)?.welcome_description_3,
        },
        {
          'image': const FaIcon(
            FontAwesomeIcons.tachographDigital,
            size: 128,
            color: Colors.red,
          ),
          'header': AppLocalizations.of(context)?.welcome_header_4,
          'description': AppLocalizations.of(context)?.welcome_description_4,
        },
        {
          'image': const FaIcon(
            FontAwesomeIcons.lock,
            size: 128,
            color: Colors.orange,
          ),
          'header': AppLocalizations.of(context)?.welcome_header_5,
          'description': AppLocalizations.of(context)?.welcome_description_5,
        },
        {
          'image': const FaIcon(
            FontAwesomeIcons.cloud,
            size: 128,
            color: Colors.grey,
          ),
          'header': AppLocalizations.of(context)?.welcome_header_6,
          'description': AppLocalizations.of(context)?.welcome_description_6,
        }
      ];
}
