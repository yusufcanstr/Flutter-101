import 'package:flutter/material.dart';
import 'package:information_card/101/icon_learn.dart';
import 'package:information_card/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10.0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(_MyTabViews.favorite.index);
            },
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: _notchedValue,
            shape: const CircularNotchedRectangle(),
            child: _myTabView(),
          ),
          appBar: AppBar(),
          body: _tabbarView(),
        ));
  }

  TabBar _myTabView() {
    return TabBar(
        indicatorColor: Colors.redAccent,
        labelColor: Colors.yellowAccent.shade400,
        unselectedLabelColor: Colors.greenAccent.shade400,
        padding: EdgeInsets.zero,
        onTap: (index) {
          _tabController.animateTo(index);
        },
        controller: _tabController,
        tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList());
  }

  TabBarView _tabbarView() {
    return TabBarView(physics: const NeverScrollableScrollPhysics(), controller: _tabController, children: const [
      ImageLearn(),
      IconViewLearn(),
      ImageLearn(),
      IconViewLearn(),
    ]);
  }
}

enum _MyTabViews { home, settings, profile, favorite }

extension _MyTabViewsExtension on _MyTabViews {
  String get name {
    switch (this) {
      case _MyTabViews.home:
        return 'Home';
      case _MyTabViews.settings:
        return 'Settings';
      case _MyTabViews.profile:
        return 'Profile';
      case _MyTabViews.favorite:
        return 'Favorite';
    }
  }
}
