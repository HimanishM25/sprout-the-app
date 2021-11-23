import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sprout_the_app/pages/favorites.dart';
import 'dart:convert';
import 'package:sprout_the_app/pages/home_tab.dart';
import 'package:sprout_the_app/pages/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  var humidity;
  var temperature;

  Future getWeather() async{

    final String apiEndpoint =("http://api.openweathermap.org/gs_data/2.5/weather?q=Mumbai&units=metric&appid=7943782b96c956a33b435a9880c6ce90");
    final Uri url = Uri.parse(apiEndpoint);
    final response = await http.post(url);
    var results =jsonDecode(response.body);

    setState(() {
      this.temperature = results['main']['temp'];
      this.humidity = results['main']['humidity'];
    });
  }

  @override
  void initState(){
    super.initState();
    this.getWeather();
  }

  int index = 0;
  final screens =[
    home_tab(),
    search(),
    favorites(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      screens[index],
      bottomNavigationBar:
      NavigationBarTheme( data: NavigationBarThemeData(indicatorColor: Colors.green.shade300), child:
      NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index)=>
          setState(() =>this.index=index),
        destinations:[
          NavigationDestination(icon: Icon(Icons.home_outlined), label:'Home',selectedIcon: Icon(Icons.home)),
          NavigationDestination(icon: Icon(Icons.search_outlined), label:'Search',selectedIcon: Icon(Icons.search)),
          NavigationDestination(icon: Icon(Icons.spa_outlined), label:'Favorites',selectedIcon: Icon(Icons.spa)),
        ]
      ),
    ),);
  }
}
