import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              emailField(),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
              ),
              passwordField(),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
              ),
              submitButton()
            ],
          ),
        ));
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'Email Address', hintText: 'you@example.com'),
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      validator: (String value) {
        
      },
      decoration: InputDecoration(
          labelText: 'Password', hintText: 'Enter your password'),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('SUBMIT'),
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () {
        formKey.currentState.reset();
      },
    );
  }
}
