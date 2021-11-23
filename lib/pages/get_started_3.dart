import 'package:flutter/material.dart';

class get_started_3 extends StatefulWidget {
  @override
  _get_started_3State createState() => _get_started_3State();
}

class _get_started_3State extends State<get_started_3> {
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
                        image: AssetImage('assets/images/3.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Text(
                "Identify The Diseases",
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
                "You can also know about the diseases that your plants are suffering from by using the plant disease identification plugin in the app!",
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
                            'assets/images/next3.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/loginscreen');
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
