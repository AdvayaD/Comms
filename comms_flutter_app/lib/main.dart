import 'package:flutter/material.dart';
import './helpers/iconhelper.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(duration: 3, goToPage: WelcomePage())));
}

class IconFont extends StatelessWidget {
  Color color;
  double size;
  String iconName;

  IconFont({required this.color, required this.size, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Text(this.iconName,
        style: TextStyle(
          color: this.color,
          fontSize: this.size,
          fontFamily: 'icons',
        ));
  }
}

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({required this.duration, required this.goToPage});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });

    return Scaffold(
        body: Container(
            color: Color.fromRGBO(90, 170, 149, 1),
            alignment: Alignment.center,
            child: IconFont(
                color: Colors.white,
                size: 200,
                iconName: IconFontHelper.PEOPLE)));
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center, child: Text('Hello World!')));
  }
}
