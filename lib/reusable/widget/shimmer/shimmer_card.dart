import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShimmerCard extends StatelessWidget {
  final double? width;
  final double? height;

  const ShimmerCard({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.grey,
      ),
      height: height,
      width: width,
    );
  }
}
