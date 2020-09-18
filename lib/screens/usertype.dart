import 'package:flutter/material.dart';
import 'package:teamakyra/screens/Hirers/authenticate/sign_in_H.dart';
import 'package:teamakyra/screens/Workers/authenticate/sign_in_W.dart';

class UserType extends StatefulWidget {
  @override
  _UserTypeState createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.teal[300],
                child: Text('Start Working',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInW()),
                  );
                },
              ),
              SizedBox(height: 80),
              Center(
                child: Text('or', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ),
              SizedBox(height: 80),
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.teal[300],
                child: Text('Start Hiring',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInH()),
                  );
                },
              )
            ],
          ),
        ));
  }
}
