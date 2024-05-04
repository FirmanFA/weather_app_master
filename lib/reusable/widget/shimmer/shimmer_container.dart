import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:weather_app_master/constant/constant.dart';

class BasicShimmerContainer extends StatelessWidget {
  final Widget child;

  const BasicShimmerContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Color(0xFF4A3C7A),
        highlightColor: Colors.grey.shade600,
        child: child);
  }
}
