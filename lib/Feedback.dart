import 'package:eREQUEST/WelcomePage.dart';
import 'package:eREQUEST/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class FeedBack extends StatelessWidget {
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
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
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
            ListView(
                padding:
                    EdgeInsets.symmetric(vertical: 410.0, horizontal: 70.0),
                children: <Widget>[
                  Icon(
                    Icons.check_circle,
                    color: Colors.black,
                  ),
                  Text(
                    'While waiting for your confirmation message, please be reminded to be safe always and maintain proper social distancing',
                    style: TextStyle(
                      color: Color(0xFF846f52),
                      fontSize: 20.0,
                      fontFamily: 'Schyler',
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
            ListView(
              padding: EdgeInsets.symmetric(vertical: 520.0, horizontal: 70.0),
              children: <Widget>[
                Icon(
                  Icons.check_circle,
                  color: Colors.black,
                ),
                Text(
                  'To pick up your request , prepare exact amount if posible as I might not have enough change at that time',
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
              padding: EdgeInsets.symmetric(vertical: 690.0, horizontal: 70.0),
              children: <Widget>[
                Icon(
                  Icons.check_circle,
                  color: Colors.black,
                ),
                Text(
                  'Wear your face mask and face shield',
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
              padding: EdgeInsets.symmetric(vertical: 730.0, horizontal: 180.0),
              children: <Widget>[
                ClipOval(
                  child: Material(
                    color: Color(0xFF6f634f), // button color
                    child: InkWell(
                      child: SizedBox(
                          width: 56, height: 56, child: Icon(Icons.arrow_back)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomePage()),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
