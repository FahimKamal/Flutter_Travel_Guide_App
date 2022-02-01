import 'package:flutter/material.dart';
import 'package:travel_guide/travel_app_reboot/pages/components/functions.dart';
import 'package:travel_guide/travel_app_reboot/pages/homepage/components/app_logo.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu, color: Colors.white,),
          ),
          const AppLogo(),
          IconButton(
            onPressed: (){
              showMessage(context: context, message: 'Search function no added yet.');
            },
            icon: const Icon(Icons.search, color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
