import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: ' H O M E ', icon: Icons.home_sharp),
    DrawerItemModel(title: ' S E T T I N G ', icon: Icons.settings),
    DrawerItemModel(title: ' A B O U T ', icon: Icons.drive_eta_sharp),
    DrawerItemModel(title: ' L O G O U T ', icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.brown,
      child: Column(
        children: [
          const DrawerHeader(
              child: FittedBox(
            child: Icon(
              Icons.star,
              color: Colors.amber,
              size: 300,
            ),
          )),
          ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return DrawerItem(drawerItemModel: items[index]);
            },
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
  });
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        drawerItemModel.icon,
        size: 30,
        color: Colors.white,
      ),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemModel.title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}

class DrawerItemModel {
  final String title;
  final IconData icon;

  const DrawerItemModel({required this.title, required this.icon});
}
