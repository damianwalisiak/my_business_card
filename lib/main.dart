import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Business Card',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('images/flutter_logo_wallpapre.png'),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.9), BlendMode.dstATop),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }
}
