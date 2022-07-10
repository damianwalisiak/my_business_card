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
              children: [
                const SizedBox(height: 130),
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 110,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/damian.jpeg'),
                    radius: 100,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Damian Walisiak',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Flutter developer',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    backgroundColor: Color.fromARGB(255, 154, 223, 255),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton.icon(
                    label: const Text(
                      ' Tel: +48 555 555 555 ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        backgroundColor: Color.fromARGB(255, 154, 223, 255),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    icon: const Icon(Icons.call_rounded),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 154, 223, 255),
                      fixedSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton.icon(
                    label: const Text(
                      ' SMS: +48 555 555 555 ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        backgroundColor: Color.fromARGB(255, 154, 223, 255),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    icon: const Icon(Icons.mail_outline_rounded),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 154, 223, 255),
                      fixedSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton.icon(
                    label: const Text(
                      ' Mail: dwalisiak@gmail.com ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        backgroundColor: Color.fromARGB(255, 154, 223, 255),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    icon: const Icon(Icons.alternate_email_rounded),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 154, 223, 255),
                      fixedSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
