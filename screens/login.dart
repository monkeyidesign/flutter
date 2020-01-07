import 'register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 100.0,
              child: Image.asset('images/logo.jpg'),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text('Welcome to login Screen'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                  color: Colors.lightBlueAccent,
                  child: MaterialButton(
                    onPressed: (){
                      //for implementing action on press
                      print('You are pressed the Login button');

                    },
                    child: Text(
                      'Login',
                    ),
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                  color: Colors.lightBlueAccent,
                  child: MaterialButton(
                    onPressed: (){
                      //for implementing action on press
                      print('Register Pressed');
                      Navigator.pushNamed(context, RegisterScreen.id);
                    },
                    child: Text(
                      'Register',
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
