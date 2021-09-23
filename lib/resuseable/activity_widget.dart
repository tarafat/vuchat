import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ActivityWidget extends StatelessWidget {
  double left;
  double right;
  double bottom;
  double top;
  double imageHeight;
  final String assetImage;
  final String descText;
  ActivityWidget(
      {Key key,
      this.assetImage,
      this.descText,
      this.left,
      this.right,
      this.bottom,
      this.imageHeight,
      this.top})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      top: top,
      bottom: bottom,
      child: Column(
        children: [
          Image.asset(
            assetImage,
            color: Colors.white,
            height: imageHeight,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              descText,
              style: const TextStyle(fontSize: 8, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
