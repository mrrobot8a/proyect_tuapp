import 'package:flutter/material.dart';
import 'package:flutter_auth/componentes/rounded_button.dart';
import 'package:flutter_auth/vistas/Signup/components/social_icon.dart';
import 'package:flutter_auth/vistas/login/login_screen.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.01),
              Image.asset(
                "assets/images/Barbero_login.png",
                height: size.height * 0.45,
                width: size.width * 2.9,
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "Bienvenido",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: "Iniciar sesion",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                height: size.height / 7,
                decoration: new BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0))),
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SocalIcon(
                          iconSrc: "assets/icons/facebook.svg",
                          press: () {},
                        ),
                        SocalIcon(
                          iconSrc: "assets/icons/twitter.svg",
                          press: () {},
                        ),
                        SocalIcon(
                          iconSrc: "assets/icons/google-plus.svg",
                          press: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text("www.google.com"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
