import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  String? hintText;
    TextFormFieldWidget({this.hintText})  ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          hintText: hintText,
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1),
          hintStyle: const TextStyle(color: Colors.grey)),
      style: const TextStyle(color: Colors.black),
      cursorColor: Colors.orange,
    );
  }
}
