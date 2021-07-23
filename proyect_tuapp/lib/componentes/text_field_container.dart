import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(29),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: child,
    );
  }
}
