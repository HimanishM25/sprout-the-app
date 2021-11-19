import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  //bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
         backgroundColor: Color(0xffFFF9F0),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Center(
                child: Text("sprout.",
                
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xff323232)),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(40, 50, 0, 0),
                child: Text("Gardening is\ncheaper than\ntherapy*",

                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xff323232),
                      height: 1.4,
                      fontFamily: 'Poppins',
                      fontSize: 35,
                      fontWeight: FontWeight.w800,
                    )
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(40, 8.0, 0,0),
                child: Text("Also you get the tomatoes!",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Poppins',
        
                    fontSize: 18,
                    color: Color(0xffACC05F),
                  ),
                ),
              ),
              Center(child: Image.asset('assets/images/img.png',height: 350, width: 350,)),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                child: Center(
                  child: TextButton(

                    onPressed: (){
                      Navigator.pushNamed(context, '/get_started_1');
                    },
                    child: Text("Explore Now!",
                    style: TextStyle(color: Color(0xffACC05F),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),

                        ),

                  ),
                ),
              )

            ]
        )


    );



  }
}