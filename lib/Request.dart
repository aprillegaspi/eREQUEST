import 'package:eREQUEST/Feedback.dart';
import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController nicknameController = TextEditingController();
  TextEditingController bdayController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController datebirthController = TextEditingController();
  TextEditingController civilstatController = TextEditingController();
  TextEditingController purposeController = TextEditingController();
  TextEditingController yrsresidencyController = TextEditingController();

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
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              children: <Widget>[
                Image.asset(
                  'assets/logo.png',
                  height: 90.0,
                ),
                SizedBox(height: 10.0),
                Text(
                  'Fill the form below: ',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Schyler',
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 130),
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
                            controller: firstNameController,
                            cursorColor: Color(0xFF9b9b9b),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Color(0xFFb6a480),
                              ),
                              hintText: "Firstname",
                              hintStyle: TextStyle(
                                  color: Color(0xFF6f7072),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          //middlename
                          TextField(
                            style: TextStyle(color: Color(0xFF000000)),
                            controller: middleNameController,
                            cursorColor: Color(0xFF9b9b9b),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Color(0xFFb6a480),
                              ),
                              hintText: "Middlename",
                              hintStyle: TextStyle(
                                  color: Color(0xFF6f7072),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          //Lastname
                          TextField(
                            style: TextStyle(color: Color(0xFF000000)),
                            controller: lastNameController,
                            cursorColor: Color(0xFF9b9b9b),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Color(0xFFb6a480),
                              ),
                              hintText: "Lastname",
                              hintStyle: TextStyle(
                                  color: Color(0xFF6f7072),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          // nick name
                          TextField(
                            style: TextStyle(color: Color(0xFF000000)),
                            controller: nicknameController,
                            cursorColor: Color(0xFF9b9b9b),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Color(0xFFb6a480),
                              ),
                              hintText: "Nickname",
                              hintStyle: TextStyle(
                                  color: Color(0xFF6f7072),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          // birthday
                          TextField(
                            style: TextStyle(color: Color(0xFF000000)),
                            controller: bdayController,
                            cursorColor: Color(0xFF9b9b9b),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.calendar_today,
                                color: Color(0xFFb6a480),
                              ),
                              hintText: "Birthday",
                              hintStyle: TextStyle(
                                  color: Color(0xFF6f7072),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          //Address
                          TextField(
                            style: TextStyle(color: Color(0xFF000000)),
                            controller: addressController,
                            cursorColor: Color(0xFF9b9b9b),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.add_location,
                                color: Color(0xFFb6a480),
                              ),
                              hintText: "Address",
                              hintStyle: TextStyle(
                                  color: Color(0xFF6f7072),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          //date of birth
                          TextField(
                            style: TextStyle(color: Color(0xFF000000)),
                            controller: datebirthController,
                            cursorColor: Color(0xFF9b9b9b),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.add_location,
                                color: Color(0xFFb6a480),
                              ),
                              hintText: "Date of birth",
                              hintStyle: TextStyle(
                                  color: Color(0xFF6f7072),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          //civil status
                          TextField(
                            style: TextStyle(color: Color(0xFF000000)),
                            controller: civilstatController,
                            cursorColor: Color(0xFF9b9b9b),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.add_location,
                                color: Color(0xFFb6a480),
                              ),
                              hintText: "Civil Status",
                              hintStyle: TextStyle(
                                  color: Color(0xFF6f7072),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          //Contact
                          TextField(
                            style: TextStyle(color: Color(0xFF000000)),
                            controller: contactController,
                            cursorColor: Color(0xFF9b9b9b),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.mobile_screen_share,
                                color: Color(0xFFb6a480),
                              ),
                              hintText: "Contact No",
                              hintStyle: TextStyle(
                                  color: Color(0xFF6f7072),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          //Purpose
                          TextField(
                            style: TextStyle(color: Color(0xFF000000)),
                            controller: purposeController,
                            cursorColor: Color(0xFF9b9b9b),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.business,
                                color: Color(0xFFb6a480),
                              ),
                              hintText: "Purpose",
                              hintStyle: TextStyle(
                                  color: Color(0xFF6f7072),
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          //years of residency
                          TextField(
                            style: TextStyle(color: Color(0xFF000000)),
                            controller: yrsresidencyController,
                            cursorColor: Color(0xFF9b9b9b),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.comment,
                                color: Color(0xFFb6a480),
                              ),
                              hintText: "Years of residency",
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
                                      builder: (context) => FeedBack()),
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
