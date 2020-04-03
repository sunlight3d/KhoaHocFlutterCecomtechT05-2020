import 'package:flutter/material.dart';
//Video tham khao : https://www.youtube.com/watch?v=NHAIiAmxTAU
/*
podstpec.yaml, assets nam trong flutter, tab vao 2 space
Kich thuoc man hinh: MediaQuery.of(context).size.height
*/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage()
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill
                )
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 30,
                    top: 40,
                    width: 60,
                    height: 60,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/star.png')
                        )
                      ),
                    ),
                  ),
                  Positioned(
                    left: 180,
                    top: 60,
                    width: 50,
                    height: 50,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/star.png')
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    left: 300,
                    top: 100,
                    width: 30,
                    height: 40,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/star.png')
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top: 0),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold),
                        ),
                      )
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

