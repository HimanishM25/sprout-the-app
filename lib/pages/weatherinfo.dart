import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class weatherinfo extends StatefulWidget {

  @override
  _weatherinfoState createState() => _weatherinfoState();
}

class _weatherinfoState extends State<weatherinfo> {
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
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(temperature.toString()),
                Text(humidity.toString()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
