import 'package:flutter/material.dart';

class get_started_1 extends StatefulWidget {
  @override
  _get_started_1State createState() => _get_started_1State();
}

class _get_started_1State extends State<get_started_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 40, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/loginscreen');
                      },
                      child: Text("Skip",
                          style: TextStyle(
                              color: Color(0xff323232),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 18))),
                ],
              ),
            ),
            Center(
              child: Container(
                width: 280,
                height: 280,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/1.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Text(
                "Recommend & Search",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Text(
                "Enter the temperature and soil type of your area and we'll recommend you plants you can grow or search for your desired plants!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(28, 0, 0, 10),
                          child: Image.asset(
                            'assets/images/next1.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/get_started_2');
                              },
                              child: Text("Next",
                                  style: TextStyle(
                                      color: Color(0xff323232),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
