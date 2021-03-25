import 'package:flutter/material.dart';

class RequestStat extends StatefulWidget {
  @override
  _RequestStatState createState() => _RequestStatState();
}

class _RequestStatState extends State<RequestStat> {
  TextEditingController requestIDController = TextEditingController();

  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  bool _isLoading = false;

  void submit() {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState.save();
  }

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
                  ],
                ),
              ),
            ),

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
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // name
                              TextFormField(
                                style: TextStyle(color: Color(0xFF000000)),
                                controller: requestIDController,
                                cursorColor: Color(0xFF9b9b9b),
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.confirmation_number,
                                    color: Color(0xFFb6a480),
                                  ),
                                  hintText: "Type request Id",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF6f7072),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return '* Required!';
                                  }
                                  return null;
                                },
                              ),

                              // submit Button
                              Padding(
                                padding: EdgeInsets.all(2.0),
                                child: TextButton(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 5, bottom: 5, left: 10, right: 10),
                                    child: Text(
                                      _isLoading ? 'Submitting...' : 'Submit',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                        decoration: TextDecoration.none,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  onPressed: () => submit(),
                                  // onPressed: () {
                                  //   Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => Confirmation()),
                                  //   );
                                  // },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Color(0xFFb6a480),
                                  ),
                                ),
                              )
                            ],
                          ),
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
