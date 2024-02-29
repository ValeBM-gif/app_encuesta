import 'package:app_encuesta/background.dart';
import 'package:app_encuesta/screens/encuesta_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          const BackgroundDown(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('suaurio'),
                Text('password'),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return EncuestaScreen();
                          },
                        ),
                      );
                    },
                    child: Text('Iniciar Sesión'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
