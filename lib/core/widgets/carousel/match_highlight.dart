

import 'package:flutter/material.dart';

import '../../app_color.dart';
import 'heighlight_card.dart';



class MatchHighlightCarousel extends StatefulWidget {
  @override
  State<MatchHighlightCarousel> createState() => _MatchHighlightCarouselState();
}

class _MatchHighlightCarouselState extends State<MatchHighlightCarousel> {
  final List<Map<String, dynamic>> matches = [
    {
      'tournament': "ASIA CUP 2026",
      'desc': "9th Match, Super Four (D/L), Colombo, Septem...",
      'teamA': "SL",
      'teamALogo': "assets/images/flag_sl.png",
      'teamB': "BAN",
      'teamBLogo': "assets/images/flag_ban.png",
      'status': "Need 24 Runs In 12 Balls"
    },
    {
      'tournament': "ASIA CUP 2026",
      'desc': "9th Match, Super Four (D/L), Colombo, Septem...",
      'teamA': "SL",
      'teamALogo': "assets/images/flag_sl.png",
      'teamB': "BAN",
      'teamBLogo': "assets/images/flag_ban.png",
      'status': "Need 24 Runs In 12 Balls"
    },
    {
      'tournament': "ASIA CUP 2026",
      'desc': "9th Match, Super Four (D/L), Colombo, Septem...",
      'teamA': "SL",
      'teamALogo': "assets/images/flag_sl.png",
      'teamB': "BAN",
      'teamBLogo': "assets/images/flag_ban.png",
      'status': "Need 24 Runs In 12 Balls"
    },
  ];
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 190,
          child: PageView.builder(
            itemCount: matches.length,
            onPageChanged: (idx) => setState(() => page = idx),
            itemBuilder: (ctx, idx) {
              final match = matches[idx];
              return HighlightCard(
                tournament: match['tournament'],
                desc: match['desc'],
                teamA: match['teamA'],
                teamALogo: match['teamALogo'],
                teamB: match['teamB'],
                teamBLogo: match['teamBLogo'],
                status: match['status'],
              );
            },
          ),
        ),
        // Carousel Page Indicator
        SizedBox(height: 9),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(matches.length, (i) {
            bool isActive = page == i;
            return Container(
              width: isActive ? 13 : 11,
              height: isActive ? 13 : 11,
              margin: EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                color: isActive ? AppColors.primary : Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red, width: 1.2),
              ),
            );
          }),
        ),
        SizedBox(height: 5)
      ],
    );
  }
}


