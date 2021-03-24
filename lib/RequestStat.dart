import 'package:eREQUEST/Confirmation.dart';
import 'package:flutter/material.dart';

class RequestStat extends StatefulWidget {
  @override
  _RequestStatState createState() => _RequestStatState();
}

class _RequestStatState extends State<RequestStat> {
  TextEditingController requestIDController = TextEditingController();

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6f634f),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            // background
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
            // ListView(
            //   padding: EdgeInsets.symmetric(horizontal: 40.0),
            //   children: <Widget>[
            //     Image.asset(
            //       'assets/logo.png',
            //       height: 90.0,
            //     ),
            //     SizedBox(height: 30.0),
            //   ],
            // ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      elevation: 2.0,
                      color: Color(0xFFcfc493),
                      margin: EdgeInsets.only(left: 20, right: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // name
                            TextField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: requestIDController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.confirmation_number,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Request Id",
                                hintStyle: TextStyle(
                                    color: Color(0xFF6f7072),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),

                            // submit Button
                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: FlatButton(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 8, bottom: 8, left: 10, right: 10),
                                  child: Text(
                                    _isLoading ? 'Submitting...' : 'Submit',
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                color: Color(0xFF46505e),
                                disabledColor: Color(0xFF846f52),
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(20.0)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Confirmation()),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// Padding(
//                               padding: EdgeInsets.all(2.0),
//                               child: FlatButton(
//                                   child: Padding(
//                                     padding: EdgeInsets.only(
//                                         top: 8, bottom: 8, left: 10, right: 10),
//                                     child: Text(
//                                       _isLoading ? 'Submitting...' : 'Submit',
//                                       textDirection: TextDirection.ltr,
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 15.0,
//                                         decoration: TextDecoration.none,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                   ),
//                                   color: Colors.blueAccent,
//                                   disabledColor: Color(0xFF846f52),
//                                   shape: new RoundedRectangleBorder(
//                                       borderRadius:
//                                           new BorderRadius.circular(20.0)),
//                                   onPressed: _isLoading ? null : _handleSubmit),
//                             ),
