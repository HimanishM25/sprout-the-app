import 'package:flutter/material.dart';

class get_started_2 extends StatefulWidget {
  @override
  _get_started_2State createState() => _get_started_2State();
}

class _get_started_2State extends State<get_started_2> {
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
                        image: AssetImage('assets/images/2.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Text(
                "Set Reminders",
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
                "Never forget to water your plants by setting up reminders with the built-in plugin in the app!",
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
                            'assets/images/next2.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/get_started_3');
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
