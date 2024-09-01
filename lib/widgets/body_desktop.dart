import 'package:app_test_responsive/widgets/body_tablet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';

class BodyDesktop extends StatelessWidget {
  const BodyDesktop({super.key});
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: ' H O M E ', icon: Icons.home_sharp),
    DrawerItemModel(title: ' S E T T I N G ', icon: Icons.settings),
    DrawerItemModel(title: ' A B O U T ', icon: Icons.drive_eta_sharp),
    DrawerItemModel(title: ' L O G O U T ', icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomDrawer(),
        Expanded(flex: 3, child: BodyTablet()),
        Expanded(flex: 1, child: DeskWidget()),
      ],
    );
  }
}

class DeskWidget extends StatelessWidget {
  const DeskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 15, bottom: 15, right: 16),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
