import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AuthenticationPage(),
  ));
}

class AuthenticationPage extends StatelessWidget {
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(MediaQuery.of(context).size.width * 20/100),
                      bottomLeft: Radius.circular(MediaQuery.of(context).size.width * 20/100)
                  ),
                  child: Image(
                    image: AssetImage("assets/auth-image.png"),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 60/100,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 20/100),
                  child: Image(
                    image: AssetImage("assets/logo-icon.png"),
                    width: 50,
                    height: 50,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 25/100),
                  alignment: Alignment.center,
                  child: Text(
                    "LeyList",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Expressway",
                      fontSize: 40,
                      color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 10/100),
              width: MediaQuery.of(context).size.width * 90/100,
              height: 60,
              child: RaisedButton(
                onPressed: (){},
                padding: EdgeInsets.only(top: 20,bottom: 20),
                color: Colors.redAccent,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    letterSpacing: 5,
                    fontFamily: "Expressway",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 5/100),
              width: MediaQuery.of(context).size.width * 90/100,
              height: 60,
              child: FlatButton(
                onPressed: (){},
                padding: EdgeInsets.only(top: 20,bottom: 20),
                color: Colors.white,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    letterSpacing: 5,
                    fontFamily: "Expressway",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}