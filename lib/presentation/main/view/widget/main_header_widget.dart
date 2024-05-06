import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class MainHeaderWidget extends StatelessWidget {
  final String selectedCity;
  final Function() onHeaderClick;
  final OverlayPortalController overlayPortalController;
  final Widget overlayWidget;

  const MainHeaderWidget(
      {super.key,
      required this.selectedCity,
      required this.onHeaderClick,
      required this.overlayPortalController,
      required this.overlayWidget});

  @override
  Widget build(BuildContext context) {
    return OverlayPortal(
      controller: overlayPortalController,
      overlayChildBuilder: (BuildContext context) {
        return overlayWidget;
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => onHeaderClick.call(),
            child: Text(
              selectedCity,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
          ),
          4.horizontalSpace,
          GestureDetector(
            onTap: () => onHeaderClick.call(),
            child: const Icon(
              Iconsax.arrow_down_1,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
