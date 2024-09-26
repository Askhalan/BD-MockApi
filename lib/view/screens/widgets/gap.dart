import 'package:flutter/material.dart';

class JGap extends StatelessWidget {
  const JGap({super.key, this.h = 12, this.w = 12});
  final double h, w;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h,
      width: w,
    );
  }
}
