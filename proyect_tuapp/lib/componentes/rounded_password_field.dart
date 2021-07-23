import 'package:flutter/material.dart';
import 'package:flutter_auth/componentes/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: "Contraseña",
          icon: Icon(
            Icons.lock,
            color: Colors.black,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
