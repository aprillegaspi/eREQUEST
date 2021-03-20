import 'package:eREQUEST/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class ForthRoute extends StatelessWidget {
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
                    Color(0xFFb6a480),
                    Color(0xFFcfc493),
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
                SizedBox(height: 70.0),
                Text(
                  'THANK YOU FOR YOUR REQUEST...',
                  style: TextStyle(
                    color: Color(0xFF846f52),
                    fontSize: 30.0,
                    fontFamily: 'Schyler',
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                Text(
                  'We will notify you soon once your request has been approved!',
                  style: TextStyle(
                    color: Color(0xFF846f52),
                    fontSize: 20.0,
                    fontFamily: 'Schyler',
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              children: <Widget>[
                SizedBox(height: 90.0),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  margin: EdgeInsets.symmetric(vertical: 250.0),
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
                        '''R E M I N D E R S :''',
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
          ],
        ),
      ),
    );
  }
}
