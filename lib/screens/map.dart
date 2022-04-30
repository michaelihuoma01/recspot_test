import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recspot_test/helpers/colors.dart';
import 'package:recspot_test/widgets/appbar_widget.dart';
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
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBarWidget(bgColor: AppColors.appColor),
      ),
      body: Stack(children: [
        // Maps image used in place of maps
        Positioned(
            top: 50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/maps.png'),
            )),
        Container(
          width: double.infinity,
          height: 80,
          decoration: const BoxDecoration(
              color: AppColors.appColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
        ),
        // Map search box defined in widgets folder
        Column(
          children: const [
            Text('Your Route',
                style: TextStyle(color: AppColors.white, fontSize: 23)),
            MapSearchBox(),
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
                  children: const [
                    Text('Distance'),
                    Text('8 km',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Time'),
                  Text('60 min',
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
        backgroundColor: AppColors.white,
        child: Icon(FontAwesomeIcons.circleDot, color: AppColors.blue),
      ),
    );
  }
}
