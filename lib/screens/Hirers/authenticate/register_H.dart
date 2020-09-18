import 'package:flutter/material.dart';
import 'package:teamakyra/screens/Hirers/authenticate/sign_in_H.dart';
import 'package:teamakyra/shared/constants.dart';

class RegisterH extends StatefulWidget {
  @override
  _RegisterHState createState() => _RegisterHState();
}

class _RegisterHState extends State<RegisterH> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: Text(
          'Sign up to Atmanirbhar',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: Colors.teal[400],
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50.0,
                    ),
                    TextFormField(
                        decoration:
                            textInputDecoration.copyWith(labelText: 'Name'),
                        validator: (val) =>
                            val.isEmpty ? 'Enter your name' : null,
                        onChanged: (val) {}),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                        decoration:
                            textInputDecoration.copyWith(labelText: 'Age'),
                        validator: (val) =>
                            val.length < 18 ? 'Please do not register' : null,
                        obscureText: true,
                        onChanged: (val) {}),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                        decoration:
                            textInputDecoration.copyWith(labelText: 'Address'),
                        validator: (val) => val.length < 5
                            ? 'Enter your complete address'
                            : null,
                        obscureText: true,
                        onChanged: (val) {}),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                        decoration: textInputDecoration.copyWith(
                            labelText: 'Phone Number'),
                        validator: (val) =>
                            val.isEmpty ? 'Enter a phone number' : null,
                        onChanged: (val) {}),
                    SizedBox(
                      height: 30.0,
                    ),
                    RaisedButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                        materialTapTargetSize: MaterialTapTargetSize.values[0],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.teal[300],
                        child: Text(
                          'Send OTP',
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        ),
                        onPressed: () {}),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                        decoration:
                            textInputDecoration.copyWith(labelText: 'OTP'),
                        validator: (val) => val.length < 2
                            ? 'Enter the OTP sent to you via message'
                            : null,
                        obscureText: true,
                        onChanged: (val) {}),
                    SizedBox(
                      height: 30.0,
                    ),
                    RaisedButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                        materialTapTargetSize: MaterialTapTargetSize.values[0],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.teal[300],
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.black, fontSize: 26),
                        ),
                        onPressed: () {}),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Already have an account?",
                            style: TextStyle(color: Colors.black),
                          ),
                          FlatButton.icon(
                            icon: Icon(
                              Icons.input,
                              color: Colors.teal,
                            ),
                            label: Text('Sign In',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.teal,
                                )),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInH()),
                              );
                            },
                          )
                        ])
                    //Text(error, style: TextStyle(color: Colors.red)),
                  ],
                )),
          )),
    );
  }
}
