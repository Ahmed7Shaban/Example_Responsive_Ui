import 'package:flutter/material.dart';

import 'custom_list_view.dart';
import 'custom_sliver_grid.dart';

class BodyTablet extends StatelessWidget {
  const BodyTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(child: DesktopBox()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          CustomListView()
        ],
      ),
    );
  }
}
