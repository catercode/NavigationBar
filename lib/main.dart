import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Navigator(),
    );
  }
}

class Navigator extends StatelessWidget {
  const Navigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(64, 64, 64, 1),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.black),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FlutterLogo(
                    size: 50,
                  ),
                  const Text(
                    "Navigator",
                    style: TextStyle(color: Colors.amber),
                  ),
                const  Spacer(),
                  Row(
                    children: [
                      Navigation_Bar(
                        press: () {},
                        text: "Home",
                        textColor: Colors.white,
                        color: Colors.transparent,
                      ),
                      Navigation_Bar(
                        press: () {},
                        text: "About Us",
                        textColor: Colors.white,
                        color: Colors.transparent,
                      ),
                      Navigation_Bar(
                        press: () {},
                        text: "Services",
                        textColor: Colors.white,
                        color: Colors.transparent,
                      ),
                      Navigation_Bar(
                        press: () {},
                        text: "Contact Us",
                        textColor: Colors.white,
                        color: Colors.transparent,
                      ),
                      Navigation_Bar(
                        press: () {},
                        text: "Blog",
                        textColor: Colors.black,
                        color: Colors.amber,
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Navigation_Bar extends StatelessWidget {
  const Navigation_Bar({
    Key? key,
    required this.text,
    required this.press,
    this.color = Colors.transparent,
    this.textColor = Colors.white10,
  }) : super(key: key);
  final String text;
  final VoidCallback press;
  final Color color;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: color),
      onPressed: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Text(text,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: textColor)),
      ),
    );
  }
}
