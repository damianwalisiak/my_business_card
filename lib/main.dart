import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'package:url_launcher/url_launcher.dart';

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
                    onPressed: () async {
                      const phoneNumber = '+48555555555';
                      const url = 'tel:$phoneNumber';

                      if (await canLaunchUrlString(url)) {
                        await launchUrlString(url);
                      }
                    },
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
                    onPressed: () async {
                      const phoneNumber = '+48555555555';
                      const url = 'sms:$phoneNumber';

                      if (await canLaunchUrlString(url)) {
                        await launchUrlString(url);
                      }
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton.icon(
                    label: const Text(
                      ' Mail: dwdwdw@gmail.com ',
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
                    onPressed: () async {
                      const toEmail = '';
                      const subject =
                          'Hello, this is my business card - Damian Walisiak';
                      const message =
                          'Hello!\n\nWe met, that is why I am sending you my details if you would like to contact me: \n tel: +48555555555 \n facebook: https://www.facebook.com/Flutter-House-112650098089526 \n instagram: https://www.instagram.com/flutter/ \n linkedin: https://www.linkedin.com/company/flutterofficial/ \n ';
                      final url =
                          'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';

                      if (await canLaunchUrlString(url)) {
                        await launchUrlString(url);
                      }
                    },
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () async {
                        const url =
                            'https://www.facebook.com/Flutter-House-112650098089526';

                        if (await canLaunch(url)) {
                          await launch(
                            url,
                            forceSafariVC: false,
                          );
                        }
                      },
                      customBorder: const CircleBorder(),
                      child: const Icon(
                        FontAwesomeIcons.facebook,
                        size: 50,
                        color: Color.fromARGB(255, 154, 223, 255),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        const url = 'https://twitter.com/FlutterDev';

                        if (await canLaunch(url)) {
                          await launch(
                            url,
                            forceSafariVC: false,
                          );
                        }
                      },
                      customBorder: const CircleBorder(),
                      child: const Icon(
                        FontAwesomeIcons.twitter,
                        size: 50,
                        color: Color.fromARGB(255, 154, 223, 255),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        const url =
                            'https://www.linkedin.com/company/flutterofficial/';

                        if (await canLaunch(url)) {
                          await launch(
                            url,
                            forceSafariVC: false,
                          );
                        }
                      },
                      customBorder: const CircleBorder(),
                      child: const Icon(
                        FontAwesomeIcons.linkedinIn,
                        size: 50,
                        color: Color.fromARGB(255, 154, 223, 255),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        const url = 'https://github.com/flutter/';

                        if (await canLaunch(url)) {
                          await launch(
                            url,
                            forceSafariVC: false,
                          );
                        }
                      },
                      customBorder: const CircleBorder(),
                      child: const Icon(
                        FontAwesomeIcons.github,
                        size: 50,
                        color: Color.fromARGB(255, 154, 223, 255),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
