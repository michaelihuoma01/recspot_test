import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String? error;
  const ErrorPage({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          color: Colors.green,
          child: Center(child: Text('Oops! you ran into an error: \n${error ?? ''}', textAlign: TextAlign.center))),
    );
  }
}
