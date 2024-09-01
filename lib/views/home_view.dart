import 'package:flutter/material.dart';

import '../widgets/adaptive_layout.dart';
import '../widgets/body_desktop.dart';
import '../widgets/body_phone.dart';
import '../widgets/body_tablet.dart';
import '../widgets/custom_drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        backgroundColor: const Color(0xffDBDBDB),
        appBar: MediaQuery.sizeOf(context).width < 900
            ? AppBar(
                backgroundColor: Colors.brown,
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              )
            : null,
        body: const AdaptiveLayout(
          mobilLayout: BodyPhone(),
          tabletLayout: BodyTablet(),
          desktopLayout: BodyDesktop(),
        ));
  }
}
