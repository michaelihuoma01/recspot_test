import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('Find Your Route',
              style: TextStyle(fontSize: 23, color: Colors.black)),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Search your route',
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.search, size: 30, color: Colors.black)),
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                onChanged: (value) {
                  if (value.trim().isNotEmpty) {
                    setState(() {});
                  }
                },
              ),
              Text('HomeScreen'),
            ],
          ),
        ));
  }
}
