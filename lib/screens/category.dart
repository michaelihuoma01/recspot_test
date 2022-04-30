import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:recspot_test/widgets/category_tile.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  // Contents of the sliding up panel
  Widget _panel(ScrollController sc) {
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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Image.asset(
          'assets/images/bg.png',
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
          body: SlidingUpPanel(
            parallaxEnabled: true,
            parallaxOffset: 1.0,
            minHeight: MediaQuery.of(context).size.height * .70,
            maxHeight: MediaQuery.of(context).size.height * .90,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            panelBuilder: (sc) => _panel(sc),
          ),
        ),
      ],
    );
  }
}
