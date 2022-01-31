import 'package:flutter/material.dart';
import 'package:travel_guide/travel_app_reboot/pages/components/functions.dart';
import 'package:travel_guide/travel_app_reboot/pages/homepage/components/social_links.dart';
import 'package:travel_guide/travel_app_reboot/pages/region_page/region_page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: defaultPadding,
                  crossAxisSpacing: defaultPadding,
                  childAspectRatio: 1.5,
                  // mainAxisExtent: 200
                ),
                itemCount: StaticData.mainMenuItems.length,
                itemBuilder: (context, index) {
                  return HomepageMenuButton(
                    icon: StaticData.mainMenuItems[index][1],
                    label: StaticData.mainMenuItems[index][0],
                  );
                },
              ),
            ),
            const SocialLinks(),
          ],
        ),
      ),
    );
  }
}

class HomepageMenuButton extends StatelessWidget {
  const HomepageMenuButton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final IconData icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (label == "ভিডিও") {
          await launch(
              'https://www.youtube.com/channel/UCo0bGFsKTe8EIp3-4cOGvMw');
        } else if (label == "বাংলাদেশ ভ্রমণ") {
          Navigator.push(context, MaterialPageRoute(builder: (context){return RegionPage(appBarTitle: label!);}));
        } else if (label == "বিদেশ ভ্রমণ") {
          Navigator.push(context, MaterialPageRoute(builder: (context){return RegionPage(appBarTitle: label!);}));
        } else if (label == "ভ্রমণ ব্লগ") {
          showMessage(context: context, message: 'Link is not ready yet.');
        } else if (label == "জনপ্রিয় স্থান") {
          showMessage(context: context, message: 'Link is not ready yet.');
        } else if (label == "সংরক্ষিত তথ্য") {
          showMessage(context: context, message: 'Link is not ready yet.');
        }
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.green, size: 50),
            Text(label!,style: const TextStyle(color: mainColor),
            )
          ],
        ),
      ),
    );
  }
}
