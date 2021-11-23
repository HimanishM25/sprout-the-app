import 'package:flutter/material.dart';
import 'package:sprout_the_app/pages/get_started_1.dart';
import 'package:sprout_the_app/pages/get_started_2.dart';
import 'package:sprout_the_app/pages/get_started_3.dart';
import 'package:sprout_the_app/pages/home.dart';
import 'package:sprout_the_app/pages/splash.dart';
import 'package:sprout_the_app/pages/LogoSplash.dart';
import 'package:sprout_the_app/pages/search.dart';
import 'package:sprout_the_app/pages/loginscreen.dart';
import 'package:sprout_the_app/pages/favorites.dart';
import 'package:sprout_the_app/pages/home_tab.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => logosplash(),
      '/loginscreen': (context) => LoginScreen(),
      '/search': (context) => search(),
      '/home': (context) => Home(),
      '/favorites':(context) => favorites(),
      '/get_started_1':(context) => get_started_1(),
      '/get_started_2':(context) => get_started_2(),
      '/get_started_3':(context) => get_started_3(),
      '/home_tab':(context) => home_tab(),
          '/splash':(context) => splash(),

    }
));
