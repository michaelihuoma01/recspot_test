import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:recspot_test/widgets/category_tile.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/ss.jpeg',
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
            bottomSheet: Container(
              height: 350,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: const Text('Categories', style: TextStyle(fontSize: 23)),
              ),

                  ListView(
                    shrinkWrap: true,
                    children: [
                      
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
                    ],
                  ),
                ],
              ),
            ),
            body: Stack(
              children: [
                Container(),
              ],
            )),
      ],
    );
  }
}
