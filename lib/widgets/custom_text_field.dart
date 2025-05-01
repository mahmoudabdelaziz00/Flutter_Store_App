import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText , this.onChanged , this.inputType, this.obSecure = false});

  Function(String)? onChanged ;
  String? hintText ;
  TextInputType? inputType ;
  bool? obSecure ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      obscureText: obSecure!,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
