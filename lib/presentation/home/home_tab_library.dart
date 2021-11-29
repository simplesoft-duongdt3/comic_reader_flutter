import 'package:flutter/material.dart';

import 'favorite_tab.dart';
import 'history_tab.dart';

class HomeTabLibraryWidget extends StatefulWidget {
  const HomeTabLibraryWidget({Key? key}) : super(key: key);

  @override
  State<HomeTabLibraryWidget> createState() => _HomeTabLibraryWidgetState();
}

class _HomeTabLibraryWidgetState extends State<HomeTabLibraryWidget>
    with TickerProviderStateMixin {
  late TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, initialIndex: 0, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        TabBar(
          tabs: [
            Tab(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.redAccent, width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("History"),
                ),
              ),
            ),
            Tab(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.redAccent, width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Favorite"),
                ),
              ),
            ),
          ],
          padding: const EdgeInsets.all(16),
          controller: _tabController,
          unselectedLabelColor: Colors.redAccent,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.redAccent,
          ),
        ),
        Expanded(
          child: TabBarView(
            children: const[
              HistoryTabWidget(),
              FavoriteTabWidget(),
            ],
            controller: _tabController,
          ),
        ),
      ],
    );
  }
}
