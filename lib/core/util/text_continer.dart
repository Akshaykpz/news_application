import 'package:flutter/material.dart';

class TextContiner extends StatelessWidget {
  const TextContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 140,
      // width: 150,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(blurRadius: 12, spreadRadius: 0.1, color: Colors.white)
      ], borderRadius: BorderRadius.circular(12), color: Colors.green),
      child: const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Text(
          'NEWS ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        Text(
          'MEDIA ',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
