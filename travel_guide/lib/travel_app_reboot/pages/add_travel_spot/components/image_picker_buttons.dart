import 'dart:io';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class ImagePickerButtons extends StatelessWidget {
  const ImagePickerButtons({
    Key? key,
    required this.image,
    required this.imageFromCameraFunction,
    required this.imageFromGalleryFunction,
    required this.clearFunction,
    required this.uploadFunction,
  }) : super(key: key);

  final File? image;
  final imageFromCameraFunction;
  final imageFromGalleryFunction;
  final clearFunction;
  final uploadFunction;

  @override
  Widget build(BuildContext context) {
    if (image == null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image from camera button
          buildIconButton(
            onPressed: imageFromCameraFunction,
            icon: Icons.camera_alt,
          ),
          const SizedBox(width: defaultPadding),
          // Image from Gallery button
          buildIconButton(
            onPressed: imageFromGalleryFunction,
            icon: Icons.image,
          )
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // upload button
        buildIconButton(
          onPressed: uploadFunction,
          icon: Icons.cloud_upload,
        ),
        const SizedBox(width: defaultPadding),
        // clear button
        buildIconButton(
          onPressed: clearFunction,
          icon: Icons.clear,
        ),
      ],
    );
  }

  Widget buildIconButton(
      {required final onPressed, required final IconData icon}) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 40,
        color: mainColor,
      ),
    );
  }
}
