import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_splash_gif_screen/LoginScreen.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialAppWithTheme());
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Color(0xFFF2F3F7),
          accentColor: Color(0xFFFFFFFF),
          textSelectionColor: Color(0xFF707070)),
      darkTheme: ThemeData.dark()
          // primaryColor: Colors.black,
          // accentColor: Color(0xFFFFFFFF),
          // textSelectionColor: Color(0xFF707070)),
          .copyWith(
              primaryColor: Colors.black,
              scaffoldBackgroundColor: Colors.black,
              backgroundColor: Colors.amber,
              accentColor: Color(0xFFA8A6A6),
              textSelectionColor: Color(0xFFFFFFFF)),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Lottie.asset(
            'assets/34789-loader.json',
            fit: BoxFit.contain,
          ),
        ));
  }
}
