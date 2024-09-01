import 'package:flutter/material.dart';

import 'custom_list_view.dart';
import 'custom_sliver_grid.dart';

class BodyPhone extends StatelessWidget {
  const BodyPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 16,
      ),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          CustomSliverGrid(),
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
