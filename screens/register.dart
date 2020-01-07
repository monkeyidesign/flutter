import 'login.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'register';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
            Text('Register on MONKEY iDESIGN .com app'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                  color: Colors.lightBlueAccent,
                  child: MaterialButton(
                    onPressed: (){
                      //for implementing action on press
                      print('Register Pressed');
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    child: Text(
                      'Register',
                    ),
                  )
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                  color: Colors.lightBlueAccent,
                  child: MaterialButton(
                    onPressed: (){
                      //for implementing action on press
                      print('Back Pressed');
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    child: Text(
                      'Back',
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}