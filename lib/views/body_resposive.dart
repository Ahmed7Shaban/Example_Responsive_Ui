import 'package:flutter/material.dart';

import '../widgets/body_desktop.dart';
import '../widgets/body_phone.dart';
import '../widgets/body_tablet.dart';

class BodyResposive extends StatelessWidget {
  const BodyResposive({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return const BodyPhone();
          } else if (constraints.maxWidth < 900) {
            return const BodyTablet();
          } else {
            return const BodyDesktop();
          }
        },
      ),
    );
  }
}
