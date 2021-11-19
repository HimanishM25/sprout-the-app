import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class home_tab extends StatefulWidget {

  @override
  _home_tabState createState() => _home_tabState();
}

class _home_tabState extends State<home_tab> {
  var humidity;
  var temperature;

  Future getWeather() async{

    final String apiEndpoint =("http://api.openweathermap.org/data/2.5/weather?q=Mumbai&units=metric&appid=7943782b96c956a33b435a9880c6ce90");
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi Himanish',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'Poppins',
                color: Colors.grey

              ),),
              Text('Welcome Back',
                style: TextStyle(
                fontSize: 32,
                fontFamily: 'Poppins',
                color: Colors.black,
                fontWeight: FontWeight.bold
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(10.0,),
                  decoration:
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [Colors.lightBlue.shade200, Colors.blue.shade800],)
                  ),
                  child:
                  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mumbai, Maharashtra',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),),
                      Row(mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(temperature!=null ?(temperature.toInt()).toString() : '...',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            fontSize: 75,
                            color: Colors.white,
                          ),),
                          Text('°C',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
              ),
              Container(
                width: 375,
                height: 200,
                child: Card(
                color: Color(0xffC6EF83),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                      alignment: Alignment.centerLeft,
                      decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Poppins',
                            ),
                            decoration:
                            InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14.0),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              hintText: 'Search',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height:75,

                                child: TextButton(onPressed: (){print('recommend me pressed');}, child: Text('Recommend Me'),
                                  style:
                                  TextButton.styleFrom(
                                    primary: Colors.white,
                                    backgroundColor: Color(0xff9AC94E),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Poppins',
                                        fontSize: 25
                                    ),
                                  ),
                        ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
             ),
              ),
              Container(
                padding: EdgeInsets.all(10),
              ),
              Container(
                width: 375,
                height: 130,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xffFFC4FD), Color(0xffBFE5FF)],),
                    ),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                             Text('Want us to remind you?',
                             style: TextStyle(
                               fontSize: 18,
                               fontFamily: 'Poppins',
                               fontWeight: FontWeight.bold,
                             ),),
                          Text(' Never forget to water your plants!',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),),
                          IconButton(onPressed: (){print('add button pressed');}, icon: Icon(Icons.add_circle_outline),)
                        ],
                      ),
                    ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    ),);
  }}