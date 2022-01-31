import 'package:flutter/material.dart';

import '../../../constants.dart';

class MainMenuAppbar extends StatelessWidget {
  const MainMenuAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      padding: const EdgeInsets.all(10),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.add_location_alt_outlined,
            color: Colors.white,
            size: 50,
          ),
          Column(
            children: const [
              Text(
                "ভ্রমণ গাইড",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              Text(
                "দেশ-বিদেশ ভ্রমণের সকল তথ্য ও পরামর্শ",
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

