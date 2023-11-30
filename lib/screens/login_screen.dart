import 'package:app_encuesta/background.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Background(),
          BackgroundDown(),
          Column(
            children: [
              Text('suaurio'),
              Text('password'),
            ],
          ),
        ],
      ),
    );
  }
}
