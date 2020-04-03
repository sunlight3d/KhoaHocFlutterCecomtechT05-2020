import 'package:flutter/material.dart';
class SignupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignupPageState();
}
class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 40, 0, 0),
            child: Text(
              'Hello World',
              style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 20, left: 10, right: 20),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your email',
                        labelStyle: TextStyle(
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)
                        )
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your password',
                        labelStyle: TextStyle(
                            fontFamily: 'Arial',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)
                        )
                    ),
                  ),
                ],
              )
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(top: 20, right: 10),
            child: Text(
              'Forgot password',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
              ),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: 50,
            child: Material(
              borderRadius: BorderRadius.circular(25),
              shadowColor: Colors.deepOrange,
              color: Colors.blue,
              elevation: 10,
              child: GestureDetector(
                  onTap: (){
                    print('Tap to login');
                  },
                  child: Center(
                    child: Text(
                      'Login to your account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Arial',
                      ),
                    ),
                  )
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: 50,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      'images/icon.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  SizedBox(width: 6,),
                  Center(
                    child: Text(
                      'Login with Facebook',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: 50,
            child: Material(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey,
              elevation: 10,
              child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Text(
                      'Go back',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Arial',
                      ),
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}