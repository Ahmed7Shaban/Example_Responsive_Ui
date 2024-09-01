import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobilLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final Widget mobilLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return mobilLayout;
        } else if (constraints.maxWidth < 900) {
          return tabletLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
