import 'package:flutter/material.dart';

import '../../../constants.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    required final this.onTap,
  }) : super(key: key);

  final onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: mainColor, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text(
              "Submit",
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}