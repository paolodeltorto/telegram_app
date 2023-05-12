import 'package:flutter/material.dart';
import 'package:telegram_app/widgets/connectivity_widget.dart';

class HomePage extends ConnectivityWidget {
  const HomePage({super.key});

  @override
  Widget connectedBuild(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Telegram App'),
      ),
      body: const Center(
        child: Text(
          'Home Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ));
}
