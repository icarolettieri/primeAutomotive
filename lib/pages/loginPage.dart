// ignore_for_file: prefer_const_constructors, file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:rede_prime_automotive/pages/resetPasswordPage.dart';
import 'package:rede_prime_automotive/pages/signupPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    //Is a Widget important to create a screen. With this widget you can put AppBars, FloatingActionButton, etc.
    return Scaffold(
      //Container to structure the loginPage.
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        //listView to apply the function to roll the page, and avoid limit the page.
        child: ListView(
          //Putting the main logo in screen.
          children: <Widget>[
            SizedBox(
              width: 180,
              height: 180,
              child: Image.asset("assets/redePrimeAutomotive.png"),
            ),

            //putting a Welcome message.
            SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  "Seja bem vindo!",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 23,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),

            //Applying the text Field "E-mail".
            TextFormField(
              style: TextStyle(color: Colors.black54, fontSize: 15),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "e-mail",
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontStyle: FontStyle.italic,
                  fontSize: 17,
                ),
              ),
            ),

            //Text field of "Senha"
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            //Putting an enter button.

            SizedBox(
              height: 10,
            ),
            ButtonTheme(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 30.0,
              child: RaisedButton(
                //action of button.
                onPressed: () => {},
                child: Text(
                  "Entrar",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.amber,
                    fontSize: 20,
                    fontFamily: "Arial",
                  ),
                ),
                color: Colors.black54,
              ),
            ),

            //Container to configure the interactive "Did you haven't an account?"
            Container(
              height: 27,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Não possui uma conta? Clique Aqui!",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                },
              ),
            ),

            //Container to configure the interactive "Forgot my password".
            Container(
              height: 27,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Esqueci minha senha",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
