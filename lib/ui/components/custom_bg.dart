import 'package:flutter/material.dart';

class CustomBg extends StatelessWidget {
  final double top;
  final double left;
  final double right;
  final double bottom;

  const CustomBg({
    super.key,
    this.top = 0.0,
    this.left = 0.0,
    this.right = 0.0,
    this.bottom = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: top,
          right: right,
          child: ClipOval(
            child: Container(
              width: 100,
              height: 100,
              color: const Color(0XFFEA8F06).withOpacity(0.12),
            ),
          ),
        ),
        Positioned(
          top: top + 80,
          left: left + 10,
          child: ClipOval(
            child: Container(
              width: 50,
              height: 50,
              color: const Color(0XFFEA8F06).withOpacity(0.12),
            ),
          ),
        ),
      ],
    );
  }
}
