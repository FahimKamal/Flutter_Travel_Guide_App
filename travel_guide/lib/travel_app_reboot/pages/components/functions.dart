import 'package:flutter/material.dart';

void showMessage({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    duration: const Duration(seconds: 3),
    action: SnackBarAction(
      label: 'ACTION',
      onPressed: () { },
    ),
  ));
}

void showLoadingDialog(BuildContext context, String message) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                message,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

/// Can detect if the link of image from local image or cloud.
/// Load image accordingly.
Image loadImage({required String imageLink}) {
  if(imageLink.contains('https')){
    return Image.network(
      imageLink,
      fit: BoxFit.fitWidth,
    );
  }
  return Image.asset(
    imageLink,
    fit: BoxFit.fitWidth,
  );
}