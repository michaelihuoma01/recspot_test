import 'package:flutter/material.dart';
import 'package:recspot_test/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.transparent),
      ),
      home: HomeScreen(),
    );
  }
}
