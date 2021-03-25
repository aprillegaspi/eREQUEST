import 'package:erequest_app/main.dart';
import 'package:flutter/material.dart';

TextEditingController nameController = TextEditingController();
TextEditingController ageController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController contactController = TextEditingController();
TextEditingController transactionController = TextEditingController();
TextEditingController purposeController = TextEditingController();
TextEditingController statusController = TextEditingController();
TextEditingController reasonController = TextEditingController();

class Confirmation extends StatefulWidget {
  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              children: <Widget>[
                SizedBox(height: 200),
                Text(
                  'Confirmation Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'Schyler',
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),

            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 50),
                    Card(
                      elevation: 4.0,
                      color: Color(0xFFcfc493),
                      margin: EdgeInsets.only(left: 20, right: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // name
                            TextField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: nameController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Name",
                                hintStyle: TextStyle(
                                    color: Color(0xFF6f7072),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            // age
                            TextField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: ageController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.calendar_today,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Age",
                                hintStyle: TextStyle(
                                    color: Color(0xFF6f7072),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),

                            // Address
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

                            // contact
                            TextField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: contactController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.phone_android,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Contact",
                                hintStyle: TextStyle(
                                    color: Color(0xFF6f7072),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),

                            // transaction type
                            TextField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: transactionController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.receipt,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Transaction Type",
                                hintStyle: TextStyle(
                                    color: Color(0xFF6f7072),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),

                            // purpose
                            TextField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: transactionController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.work,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Purpose",
                                hintStyle: TextStyle(
                                    color: Color(0xFF6f7072),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),

                            // Request status
                            TextField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: statusController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.check_circle,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Request Status",
                                hintStyle: TextStyle(
                                    color: Color(0xFF6f7072),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),

                            //reason
                            TextField(
                              style: TextStyle(color: Color(0xFF000000)),
                              controller: reasonController,
                              cursorColor: Color(0xFF9b9b9b),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.receipt,
                                  color: Color(0xFFb6a480),
                                ),
                                hintText: "Reason",
                                hintStyle: TextStyle(
                                    color: Color(0xFF6f7072),
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),

                            // back Button
                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: TextButton(
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
                                // color: Color(0xFF46505e),
                                // disabledColor: Color(0xFF846f52),
                                // shape: RoundedRectangleBorder(
                                //     borderRadius:
                                //         new BorderRadius.circular(20.0)),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()),
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
