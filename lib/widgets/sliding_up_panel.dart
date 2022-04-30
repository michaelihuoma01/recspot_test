import 'package:flutter/material.dart';
import 'package:recspot_test/widgets/category_tile.dart';

class SlidingPanelWidget extends StatelessWidget {
  const SlidingPanelWidget({
    Key? key,
    required this.context,
    required this.sc,
  }) : super(key: key);

  final BuildContext context;
  final ScrollController sc;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView(controller: sc, shrinkWrap: true, children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Text('Categories',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
          ),
          // Category tiles defined in the widgets folder
          CategoryTile(
            liked: true,
            title: 'Crested Butte',
            reviews: '146',
            imageUrl: 'assets/images/svb.jpeg',
          ),
          CategoryTile(
            liked: false,
            title: 'Lake Tahoe',
            reviews: '142',
            imageUrl: 'assets/images/svb1.jpeg',
          ),
          CategoryTile(
            liked: false,
            title: 'Grand Valley',
            reviews: '136',
            imageUrl: 'assets/images/svb.jpeg',
          ),
        ]));
  }
}
