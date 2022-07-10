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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(height: 130),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 110,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/damian.jpeg'),
                    radius: 100,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Damian Walisiak',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Flutter developer',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    backgroundColor: Color.fromARGB(255, 154, 223, 255),
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
