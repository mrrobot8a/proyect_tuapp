import 'package:flutter/material.dart';
import 'package:flutter_auth/componentes/already_have_an_account_acheck.dart';
import 'package:flutter_auth/componentes/custom_list_tile.dart';
import 'package:flutter_auth/componentes/rounded_button.dart';
import 'package:flutter_auth/componentes/text_field_container.dart';
import 'package:flutter_auth/vistas/Signup/components/or_divider.dart';
import 'package:flutter_auth/vistas/Signup/components/social_icon.dart';
import 'package:flutter_auth/vistas/Signup/signup_screen.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../constants.dart';
import '../../size_config.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

bool _obscureText = true;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(color: Colors.white10),
            child: SingleChildScrollView(
                child: Column(
              children: [
                ClipPath(
                  clipper: OvalBottomBorderClipper(),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 250.0,
                        padding: EdgeInsets.only(bottom: 50.0),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/welcome.jpg"),
                          fit: BoxFit.fill,
                        )),
                      ),
                      new Container(
                          width: size.width * 0.35,
                          height: size.height * 0.19,
                          decoration: new BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://i.imgur.com/BoN9kdC.png")))),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.07),
                CustomListTile(
                  title: "INICIAR SESION",
                ),
                SizedBox(height: size.height * 0.04),
                TextFieldContainer(
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    // controller: txtEmail,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        //Outline border type for TextFeild

                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(
                        Icons.alternate_email,
                        color: Colors.black,
                      ),
                      labelText: "Correo",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "Correo",
                      border: InputBorder.none,
                    ),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'El campo no debe estar vacío';
                      } else {
                        return null;
                      }
                    },
                    // onSaved: (String value) => txtEmail =
                    //   value.replaceAll(' ', '') as TextEditingController,
                  ),
                ),
                SizedBox(height: size.height * 0.001),
                TextFieldContainer(
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    // controller: txtEmail,
                    obscureText: _obscureText,
                    cursorColor: Colors.black,

                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        //Outline border type for TextFeild

                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.visibility,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            _vercontrasena(_obscureText);
                          });
                        },
                      ),
                      labelText: "Contraseña",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "Contraseña",
                    ),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'El campo no debe estar vacío';
                      } else {
                        return null;
                      }
                    },
                    // onSaved: (String value) => txtEmail =
                    //   value.replaceAll(' ', '') as TextEditingController,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                RoundedButton(
                  text: "Iniciar sesion",
                  color: Colors.lightGreenAccent[400],
                  press: () {
                    /*   login(txtEmail.text, txtPass.text).then((resp) {
                    if (resp.length == 0 ||
                        txtPass.text == '' ||
                        txtEmail.text == '') {
                      alertError(
                          title: 'Error',
                          message: "Compruebe sus credenciales");
                    } else if (resp[0]["correo"] == txtEmail.text &&
                        resp[0]["pass"] == txtPass.text &&
                        resp[0]["idRol"] == "1") {
                    } else {
                      alertError(
                          title: 'Error',
                          message: "Compruebe sus credenciales");
                    }
                  });*/
                  },
                ),
                SizedBox(height: size.height * 0.01),
                AlreadyHaveAnAccountCheck(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ),
                    );
                  },
                ),
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
                            press: () {
                              print("jhosas");
                            },
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
            ))));
  }

  bool _vercontrasena(bool value) {
    if (value == true) {
      _obscureText = false;

      return _obscureText;
    } else {
      _obscureText = true;
      return _obscureText;
    }
  }
}
