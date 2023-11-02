import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String image;
  final Widget child;
  final double width;
  final double height;
  final padding;
  const MyWidget({
    super.key,
    required this.padding,
    required this.image,
    required this.child,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: child,
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20), right: Radius.circular(20)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            ),
          ),
        ));
  }
}
