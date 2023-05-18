// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:telegram_app/widgets/connectivity_widget.dart';

@RoutePage(name: 'home')
class HomePage extends ConnectivityWidget {
  final User user;
  const HomePage({required this.user, Key? key}) : super(key: key);

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
