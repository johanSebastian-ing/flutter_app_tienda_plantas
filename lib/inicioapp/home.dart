import 'package:flutter/material.dart';
import 'package:flutter_application_1/inicioapp/logienScreen.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
'data:image/jpeg;base64,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',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  // form key
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = TextEditingController();

  // string for displaying the error Message
  String? errorMessage;

  _passwordReset() async {
    if (_formKey.currentState!.validate()) {
      try {
        _formKey.currentState!.save();

        // ignore: use_build_context_synchronously
        Navigator.push(
          context,
          // ignore: prefer_const_constructors
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      } catch (e) {
        // ignore: avoid_print
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final carouselSlider = CarouselSlider(
      options: CarouselOptions(height: 400.0, autoPlay: true),
      items: imgList.map((item) => Container(
        child: Center(
          child: 
          Image.network(item, fit:  BoxFit.cover, width: 1000),
        ),
      )).toList(),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Bienvenido a tu pagina",
                      style: TextStyle(
                        color: Color.fromARGB(255, 35, 167, 86),
                        fontSize: 50,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 45),
                    carouselSlider,
                    const Text(
                      "________________________________",
                      style: TextStyle(
                        color: Color.fromRGBO(112, 112, 112, 1),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
