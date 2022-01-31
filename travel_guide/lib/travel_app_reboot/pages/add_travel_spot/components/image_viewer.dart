import 'dart:io';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({
    Key? key, required this.image,
  }) : super(key: key);

  final File? image;

  @override
  Widget build(BuildContext context) {
    if(image == null){
      return SizedBox(
        height: 300,
        child: Image.asset(
          'images/Icons/gallery.png',
          color: mainColor,
        ),
      );
    }
    return SizedBox(
      height: 300,
      child: Image.file(
        image!,
      ),
    );
  }
}