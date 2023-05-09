import 'package:flutter/material.dart';
import 'package:telegram_app/widgets/connectivity_widget.dart';

class HomePage extends ConnectivityWidget {
  const HomePage({super.key});

  @override
  Widget connectedBuild(BuildContext context) => Scaffold(
          body: Container(
        child: const Text('Home Page'),
      ));
}
