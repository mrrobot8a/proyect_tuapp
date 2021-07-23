import 'package:flutter/material.dart';
import 'package:flutter_auth/componentes/rounded_button.dart';
import 'package:flutter_auth/componentes/rounded_input_field.dart';
import 'package:flutter_auth/componentes/rounded_password_field.dart';
import 'package:flutter_auth/vistas/Signup/components/social_icon.dart';
import 'components/or_divider.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController controlidBarbero = TextEditingController();

  TextEditingController controlNombre = TextEditingController();

  TextEditingController controlEmail = TextEditingController();

  TextEditingController controlPass = TextEditingController();

  TextEditingController controlTelefono = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/Barbero_login.png",
                height: size.height * 0.35,
                width: size.width * 2.9,
              ),
              RoundedInputField(
                hintText: "Correo electronico",
                icon: Icons.alternate_email,
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Nombre Completo",
                icon: Icons.account_circle,
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Telefono",
                icon: Icons.phone,
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "Registrarse",
                press: () {
                  /*
                  AGREGARLES EL CONTROLLER 
                  registrarloginUsuario(
                    
                  );*/
                },
              ),
              SizedBox(height: size.height * 0.01),
              OrDivider(),
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
