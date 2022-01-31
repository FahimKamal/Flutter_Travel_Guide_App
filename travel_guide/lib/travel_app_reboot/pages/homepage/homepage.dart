import 'package:flutter/material.dart';

import 'components/appbar.dart';
import 'components/main_menu.dart';

class TravelAppHomepage extends StatefulWidget {
  const TravelAppHomepage({Key? key}) : super(key: key);

  @override
  _TravelAppHomepageState createState() => _TravelAppHomepageState();
}

class _TravelAppHomepageState extends State<TravelAppHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          MainMenuAppbar(),
          MainMenu(),
        ],
      ),
    );
  }
}



