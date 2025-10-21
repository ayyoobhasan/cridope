



import 'package:flutter/cupertino.dart';

import '../../core/widgets/carousel/heighlight_card.dart';

class MatchTabToday extends StatefulWidget {
  @override
  State<MatchTabToday> createState() => _MatchTabTodayState();
}

class _MatchTabTodayState extends State<MatchTabToday> {
  final List<Map<String, dynamic>> matches = [
    {
      'tournament': "ASIA CUP 2026",
      'desc': "9th Match, Super Four (D/L), Colombo, Septem...",
      'teamA': "SL",
      'teamALogo': "assets/images/flag_ind.png",
      'teamB': "BAN",
      'teamBLogo': "assets/images/flag_aus.png",
      'status': "13 Oct 2025, 03:00 PM"
    },
    {
      'tournament': "ASIA CUP 2026",
      'desc': "9th Match, Super Four (D/L), Colombo, Septem...",
      'teamA': "SL",
      'teamALogo': "assets/images/flag_ind.png",
      'teamB': "BAN",
      'teamBLogo': "assets/images/flag_aus.png",
      'status': "13 Oct 2025, 03:00 PM"
    },

  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: matches.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final match = matches[index];
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
    );
  }
}