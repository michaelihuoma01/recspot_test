import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MapSearchBox extends StatelessWidget {
  const MapSearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0.5,
                blurRadius: 5,
                offset: const Offset(0, 0),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(FontAwesomeIcons.circleDot,
                        color: Colors.blue, size: 21),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'My current location',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      style: TextStyle(color: Colors.black),
                      cursorColor: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(FontAwesomeIcons.locationDot,
                          color: Colors.orange, size: 21)),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'Final Destination',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      style: TextStyle(color: Colors.black),
                      cursorColor: Colors.black,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.add_circle_outline, size: 28))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
