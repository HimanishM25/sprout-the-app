import 'package:flutter/material.dart';
import 'package:sprout_the_app/pages/get_started_1.dart';
import 'package:sprout_the_app/pages/get_started_2.dart';
import 'package:sprout_the_app/pages/get_started_3.dart';
import 'package:sprout_the_app/pages/home.dart';
import 'package:sprout_the_app/pages/splash.dart';
import 'package:sprout_the_app/pages/search.dart';
import 'package:sprout_the_app/pages/loginscreen.dart';
import 'package:sprout_the_app/pages/favorites.dart';
import 'package:sprout_the_app/pages/weatherinfo.dart';


void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => splash(),
      '/loginscreen': (context) => LoginScreen(),
      '/search': (context) => search(),
      '/home': (context) => Home(),
      '/favorites':(context) => favorites(),
      '/get_started_1':(context) => get_started_1(),
      '/get_started_2':(context) => get_started_2(),
      '/get_started_3':(context) => get_started_3(),
      '/weatherinfo':(context) => weatherinfo(),

    }
));
