import 'package:flutter/material.dart';
import 'package:jobs_mobile_app_ui/color_style.dart';

// ignore: must_be_immutable
class RegularTextWidget extends StatelessWidget {
  String text;
  Color color;
  double size;

  RegularTextWidget({
    Key? key,
    required this.text,
    this.color = mainColor,
    this.size = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
