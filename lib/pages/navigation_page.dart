import 'package:fakestagram/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../utils/assets.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      body: DefaultTabController(
        length: 3,
        child: TabBarView(
          controller: _tabController,
          children: [
            const HomePage(),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            )
          ],
        ),
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        tabs: [
          Tab(
            icon: Image.asset(Assets.icComment),
          ),
          Tab(
            icon: Image.asset(Assets.icForward),
          ),
          Tab(
            icon: Image.asset(Assets.icOptions),
          )
        ],
      ),
    );
  }
}