import 'package:flutter/material.dart';
import 'package:travel_guide/travel_app_reboot/pages/components/functions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding / 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SocialLinkContainer(
                imgLink: "images/Icons/facebook.png",
                socialLink: 'https://www.facebook.com/fahimkamal63/',
              ),
              SizedBox(width: 20),
              SocialLinkContainer(
                imgLink: 'images/Icons/instagram.png',
                socialLink: 'https://www.instagram.com/fahimkamal63/',
              ),
              SizedBox(width: 20),
              SocialLinkContainer(
                imgLink: 'images/Icons/twitter.png',
                socialLink: '',
              ),
              SizedBox(width: 20),
              SocialLinkContainer(
                imgLink: 'images/Icons/youtube.png',
                socialLink: 'https://www.youtube.com/channel/UCo0bGFsKTe8EIp3-4cOGvMw',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialLinkContainer extends StatelessWidget {
  const SocialLinkContainer({
    Key? key,
    required this.imgLink,
    required this.socialLink,
  }) : super(key: key);

  final String imgLink;
  final String socialLink;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if(socialLink != ''){
          await launch(socialLink);
        } else{
          showMessage(context: context, message: 'Link is not ready yet.');
        }

      },
      child: SizedBox(
        height: 40,
        child: Image.asset(imgLink),
      ),
    );
  }
}
