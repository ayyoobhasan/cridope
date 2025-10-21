import 'package:cricidope/features/home/video_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/widgets/appbar_home.dart';
import '../../core/widgets/carousel/match_highlight.dart';
import '../../core/widgets/common_navbar.dart';
import '../../core/widgets/top_tabbar_home.dart';
import '../core/app_color.dart';
import '../core/widgets/bottom_nav_item.dart';
import 'home/home_screen.dart';
import 'matches/match_tab_toady.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedPage = 0;
  int selectedHomeTab = 0;
  int selectedMatchTab = 0;

  final homeTabs = ['Live', "Asia Cup'25", "IPL'25", 'Ashes Series'];
  final matchTabs = ['Today', "Upcoming", "Completed"];

  Widget buildHomeContent() {
    switch (selectedHomeTab) {
      case 0:
        return HomeScreen();
      case 1:
        return Center(child: Text("Asia Cup'25 Screen"));
      case 2:
        return Center(child: Text("IPL'25 Screen"));
      case 3:
        return Center(child: Text("Ashes Series Screen"));
      default:
        return SizedBox();
    }
  }

  Widget buildMatchContent() {
    switch (selectedMatchTab) {
      case 0:
        return MatchTabToday();
      case 1:
        return Center(child: Text("Up Coming"));
      case 2:
        return Center(child: Text("Completed"));
      default:
        return Center(child: Text(matchTabs[selectedMatchTab]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 6),

            selectedPage == 0
                ? HomeHorizontalTabBar(
              tabs: homeTabs,
              selectedIndex: selectedHomeTab,
              onTap: (idx) => setState(() => selectedHomeTab = idx),
            )
                : HomeHorizontalTabBar(
              tabs: matchTabs,
              selectedIndex: selectedMatchTab,
              onTap: (idx) => setState(() => selectedMatchTab = idx),
            ),
            SizedBox(height: 6),

            selectedPage == 0 ? buildHomeContent() : buildMatchContent(),
          ],
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPage,
          onTap: (idx) {
            setState(() {
              selectedPage = idx;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            svgNavItem(
              asset: 'assets/images/nav1.svg',
              label: "Home",
              index: 0,
              selectedIndex: selectedPage,
            ),
            svgNavItem(
              asset: 'assets/images/nav2.svg',
              label: "Matches",
              index: 1,
              selectedIndex: selectedPage,
            ),
            svgNavItem(
              asset: 'assets/images/nav3.svg',
              label: "Sport",
              index: 2,
              selectedIndex: selectedPage,
            ),
            svgNavItem(
              asset: 'assets/images/nav4.svg',
              label: "More",
              index: 3,
              selectedIndex: selectedPage,
            ),
            svgNavItem(
              asset: 'assets/images/nav5.svg',
              label: "Account",
              index: 4,
              selectedIndex: selectedPage,
            ),
          ],
        ),
    );
  }
}




