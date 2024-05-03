import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BasicShimmerContainer extends StatelessWidget {
  final Widget child;

  const BasicShimmerContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.white,
        child: child);
  }
}
