import 'package:flutter/material.dart';
import 'package:recspot_test/helpers/colors.dart';
import 'package:recspot_test/widgets/appbar_widget.dart';
import 'package:recspot_test/widgets/sliding_up_panel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  // Contents of the sliding up panel
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
          backgroundColor: AppColors.transparent,
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(bgColor: AppColors.transparent),
          ),
          body: SlidingUpPanel(
            parallaxEnabled: true,
            parallaxOffset: 1.0,
            minHeight: MediaQuery.of(context).size.height * .70,
            maxHeight: MediaQuery.of(context).size.height * .90,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            panelBuilder: (sc) => SlidingPanelWidget(context: context, sc: sc),
          ),
        ),
      ],
    );
  }
}
