//import 'package:eREQUEST/Feedback.dart';
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
  TextEditingController birthPlaceController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController dateBirthController = TextEditingController();
  TextEditingController civilStatController = TextEditingController();
  TextEditingController purposeController = TextEditingController();
  TextEditingController yrsResidencyController = TextEditingController();

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
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // name
                            TextFormField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: firstNameController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Enter your firstname",
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

                            //middlename
                            TextFormField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: middleNameController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Enter your middlename",
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

                            //Lastname
                            TextFormField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: lastNameController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Enter your lastname",
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

                            // nick name
                            TextFormField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: nicknameController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Enter your nickname",
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

                            // contact
                            TextFormField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: contactController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.mobile_screen_share,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Enter your contact Number",
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

                            //Address
                            TextFormField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: addressController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.add_location,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Enter your address",
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

                            //date of birth
                            TextFormField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: dateBirthController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.calendar_today,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Enter your date of birth",
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

                            // birth place
                            TextFormField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: birthPlaceController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.place_outlined,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Enter your birth place",
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

                            //civil status
                            TextFormField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: civilStatController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.people_alt,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Enter your civil status",
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

                            //Purpose
                            TextFormField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: purposeController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.receipt,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Enter your purpose",
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

                            //years of residency
                            TextFormField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: yrsResidencyController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.house,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Enter years of residency",
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
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),

                                onPressed: () => submit(),
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xFFb6a480),
                                ),
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => FeedBack()),
                                // );
                              ),
                            ),
                          ],
                        ),
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
