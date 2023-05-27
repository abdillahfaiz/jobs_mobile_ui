// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:jobs_mobile_app_ui/color_style.dart';

// ignore: must_be_immutable
class SmallTextWidget extends StatelessWidget {
  String text;
  Color color;
  double size;

  SmallTextWidget({
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
