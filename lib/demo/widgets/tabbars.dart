import 'package:flutter/material.dart';
import 'package:flutter_app_theme/demo/demo.dart';

class TabBars extends StatefulWidget {
  const TabBars({
    Key? key,
  }) : super(key: key);

  @override
  State<TabBars> createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(label: 'Tabs'),
          Expanded(
            child: AppBar(
              bottom: TabBar(
                controller: _tabController,
                tabs: const <Widget>[
                  Tab(
                    icon: Icon(Icons.cloud_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.beach_access_sharp),
                  ),
                  Tab(
                    icon: Icon(Icons.brightness_5_sharp),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
