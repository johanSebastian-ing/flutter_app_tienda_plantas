import 'dart:async';
import 'package:flutter/material.dart';
import '../main.dart';
import 'logienScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  SizedBox(
                    height: 350,
                    child: Image.asset(
                      "assets/mata.jfif",
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Text(
                    "TIENDA",
                    style: TextStyle(
                      color: Color.fromARGB(255, 23, 201, 91),
                      fontSize: 70,
                    ),
                  ),
                  SizedBox(
                    height: 140,
                    child: Image.asset(
                      "assets/cargando.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
