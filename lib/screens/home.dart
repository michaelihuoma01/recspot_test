import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recspot_test/widgets/card_widgets.dart';
import 'package:recspot_test/screens/category.dart';
import 'package:recspot_test/screens/map.dart';
import 'package:recspot_test/widgets/category_icon.dart';
import 'package:recspot_test/widgets/indicator.dart';
import 'package:recspot_test/widgets/textformfield_widget.dart';
import 'package:tcard/tcard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TCardController _controller = TCardController();
  int _currentIndex = 0;

  // CardWidgets defined in widgets folder
  List<Widget> cards = CardWidgets.cards();

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // Textformfield defined in widgets folder
                  Expanded(
                    child: TextFormFieldWidget(hintText: 'Search your route'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.search,
                            size: 24, color: Colors.black)),
                  )
                ],
              ),
              Center(
                child: TCard(
                  cards: cards,
                  lockYAxis: false,
                  size: const Size(290, 350),
                  controller: _controller,
                  onForward: (index, info) {
                    setState(() {
                      _currentIndex = index;
                      _currentIndex - 1;
                    });
                  },
                  onEnd: () {
                    setState(() {
                      _controller.reset(cards: cards);
                      _currentIndex = 0;
                    });
                  },
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  // Card indicator defined in widgets folder
                  children: CardIndicator.buildPageIndicator(
                      cards.length, _currentIndex),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Categories',
                    style:
                        TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryIcon(
                      title: 'Map',
                      icon: const Icon(FontAwesomeIcons.mapLocationDot,
                          color: Colors.deepPurpleAccent, size: 26),
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
                      onTap: () {},
                    ),
                    CategoryIcon(
                      title: 'Places',
                      icon: const Icon(FontAwesomeIcons.umbrellaBeach,
                          color: Colors.green, size: 26),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryScreen()));
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
