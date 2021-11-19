import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  final screens =[
    Center(child: Image.asset('assets/images/home_tab.png',height: 650,width: 500,)),
    Center(child: Image.asset('assets/images/search_tab.png',height: 650,width: 500,)),
    Center(child: Image.asset('assets/images/fav_tab.png',height: 650,width: 500,))

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      screens[index],
      bottomNavigationBar:NavigationBarTheme( data: NavigationBarThemeData(indicatorColor: Colors.green.shade300), child:
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
