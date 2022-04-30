import 'package:flutter/material.dart'; 
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; 
import 'package:recspot_test/widgets/map_search_box.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, elevation: 0),
      body: Stack(children: [
        Positioned(
            top: 50,
            child: Container(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/maps.png'),
            ))),
        Container(
          width: double.infinity,
          height: 80,
          decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
        ),
        // Map search box defined in widgets folder
        Column(
          children:  [
            const Text('Your Route', style:   TextStyle(color: Colors.white, fontSize: 23)),
            const MapSearchBox(),
          ],
        ),
        Positioned(
         bottom: 0,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Distance'),
                    const Text('8 km',
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Time'),
                  const Text('60 min',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        )
      ]),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.white,
        child: Icon(FontAwesomeIcons.circleDot, color: Colors.blue),
      ),
    );
  }
}
