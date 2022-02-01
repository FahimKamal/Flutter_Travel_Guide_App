import 'package:flutter/material.dart';
import 'package:travel_guide/travel_app_reboot/pages/components/functions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            color: mainColor,
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: const Text(
              "ভ্রমণ গাইড",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          drawerTile(
            icon: Icons.info,
            text: 'About Us!',
            onTap: () async {
              await launch(
                  'https://githubhelp.com/FahimKamal');
            },
          ),
          drawerTile(
            icon: Icons.share,
            text: 'Share This App',
            onTap: () {
              showMessage(context: context, message: 'Not implemented.');
            },
          ),
          drawerTile(
            icon: Icons.settings,
            text: 'Settings',
            onTap: () {
              showMessage(context: context, message: 'Not implemented.');
            },
          ),
        ],
      ),
    );
  }

  ListTile drawerTile(
      {required IconData icon, required String text, required final onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: mainColor,
      ),
      title: Text(
        text,
        style: const TextStyle(color: mainColor),
      ),
    );
  }
}
