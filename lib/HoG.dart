import 'package:eREQUEST/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class HoP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6f634f),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 0.4, 0.9],
                  colors: [
                    Color(0xFF968266),
                    //Color(0xFFb6a480),
                    //Color(0xFFcfc493),
                  ],
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              children: <Widget>[
                Image.asset(
                  'assets/logo.png',
                  height: 100.0,
                ),
                SizedBox(height: 5.0),
                Text(
                  'e R E Q U E S T',
                  style: TextStyle(
                    color: Color(0xFF080808),
                    fontSize: 30.0,
                    fontFamily: 'Schyler',
                    fontWeight: FontWeight.w200,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              children: <Widget>[
                SizedBox(height: 5.0),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                  margin: EdgeInsets.symmetric(vertical: 170.0),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 3.0, color: Color(0xFF968266)),
                      bottom: BorderSide(width: 3.0, color: Color(0xFF968266)),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '''H E L P  |  G U I D E''',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF6f634f),
                            fontFamily: 'Schyler',
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 250.0),
                    Card(
                        color: Color(0xFFcfc493),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.check,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Fill the form with your info, make sure you input your information correctly or else your request will be denied.',
                                  style: TextStyle(
                                      color: Color(0xFF6f7072),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                  textAlign: TextAlign.center,
                                ),
                              ]),
                        ))
                  ],
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.all(50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 290.0),
                    Card(
                        color: Color(0xFFcfc493),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.check,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Select the correct transaction you want to request.',
                                  style: TextStyle(
                                      color: Color(0xFF6f7072),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                  textAlign: TextAlign.center,
                                ),
                              ]),
                        ))
                  ],
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 410.0),
                    Card(
                        color: Color(0xFFcfc493),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.check,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Make sure you have internet connection or mobile data in order for you to send the request',
                                  style: TextStyle(
                                      color: Color(0xFF6f7072),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                  textAlign: TextAlign.center,
                                ),
                              ]),
                        ))
                  ],
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.all(90.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 410.0),
                    Card(
                        color: Color(0xFFcfc493),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.check,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Wait for the confirmation message.',
                                  style: TextStyle(
                                      color: Color(0xFF6f7072),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                  textAlign: TextAlign.center,
                                ),
                              ]),
                        ))
                  ],
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 555.0),
                    Card(
                        color: Color(0xFFcfc493),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.check,
                                  color: Colors.black,
                                ),
                                Text(
                                  'You will be notified what time and what day when your request is ready for pick-up',
                                  style: TextStyle(
                                      color: Color(0xFF6f7072),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                  textAlign: TextAlign.center,
                                ),
                              ]),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
