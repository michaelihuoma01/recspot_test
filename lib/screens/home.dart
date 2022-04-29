import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recspot_test/screens/category.dart';
import 'package:recspot_test/screens/map.dart';
import 'package:recspot_test/widgets/category_icon.dart';
import 'package:tcard/tcard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TCardController _controller = TCardController();
  List<Widget> cards = [
    Container(
      child: const Image(
        width: 250,
        height: 100,
        image: Svg('assets/svg/bicycle.svg'),
      ),
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(20)),
    ),
    Container(
        decoration: BoxDecoration(
            color: Colors.orangeAccent.withOpacity(0.7),
            borderRadius: BorderRadius.circular(20))),
    Container(
        decoration: BoxDecoration(
            color: Colors.orangeAccent.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20)))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Find Your Route',
              style: TextStyle(fontSize: 23, color: Colors.black)),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Search your route',
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon:
                          Icon(Icons.search, size: 26, color: Colors.black)),
                  style: const TextStyle(color: Colors.black),
                  cursorColor: Colors.orange,
                  onChanged: (value) {
                    if (value.trim().isNotEmpty) {
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(height: 30),
                Center(
                  child: TCard(
                    cards: cards,
                    lockYAxis: false,
                    size: const Size(290, 350),
                    controller: _controller,
                    onForward: (index, info) {
                      print(index);
                      print(info.direction);
                      if (info.direction == SwipDirection.Right) {
                        print('like');
                      } else {
                        print('dislike');
                      }
                    },
                    onBack: (index, info) {
                      print(index);
                    },
                    onEnd: () {
                      print('end');
                    },
                  ),
                ),
                const SizedBox(height: 40),
                const Text('Categories', style: TextStyle(fontSize: 23)),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryIcon(
                        title: 'Map',
                        icon: const Icon(Icons.map_outlined,
                            color: Colors.deepPurpleAccent, size: 30),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MapScreen()));
                        },
                      ),
                      CategoryIcon(
                        title: 'Tourists',
                        icon: const Icon(FontAwesomeIcons.peopleGroup,
                            color: Colors.orange, size: 28),
                        onTap: () {
                          print('Tourists');
                        },
                      ),
                      CategoryIcon(
                        title: 'Places',
                        icon: const Icon(FontAwesomeIcons.umbrellaBeach,
                            color: Colors.green, size: 26),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CategoryScreen()));
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
