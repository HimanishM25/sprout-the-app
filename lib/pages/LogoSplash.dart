import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class logosplash extends StatefulWidget {
  @override
  _logosplashState createState() => _logosplashState();
}
class _logosplashState extends State<logosplash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.pushNamed(context, '/splash');
    } else {
      await prefs.setBool('seen', true);
      Navigator.pushNamed(context, '/loginscreen');
    }
  }
  @override
  void initState() {
    super.initState();
    //checkFirstSeen();
    Timer(Duration(seconds: 3),
            //()=>Navigator.pushNamed(context, '/loginscreen()'),
        ()=>checkFirstSeen(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/logos/sprout_logo.png')
          ],
        ),
      ),
    );
  }
}