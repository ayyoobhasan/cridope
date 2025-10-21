import 'package:cricidope/features/home/video_section.dart';
import 'package:flutter/material.dart';


import '../../core/widgets/carousel/match_highlight.dart';

import 'home_tab_top_stories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MatchHighlightCarousel(),
        HomeTabTopStories(),
        FeaturedVideosSection(),
      ],
    );
  }
}