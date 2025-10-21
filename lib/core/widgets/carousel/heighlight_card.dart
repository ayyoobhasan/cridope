

import 'package:flutter/material.dart';

import '../../app_color.dart';


class HighlightCard extends StatelessWidget {
  final String tournament;
  final String desc;
  final String teamA;
  final String teamALogo;
  final String teamB;
  final String teamBLogo;
  final String status;

  const HighlightCard({
    required this.tournament,
    required this.desc,
    required this.teamA,
    required this.teamALogo,
    required this.teamB,
    required this.teamBLogo,
    required this.status,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.17),
            blurRadius: 16, spreadRadius: 2, offset: Offset(2, 2),
          )
        ],
        border: Border.all(color: Colors.grey[200]!, width: 1.4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tournament,
            style: TextStyle(
              color: Colors.grey[500], fontSize: 13, fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 1),
          Text(
            desc,
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              // Team 1
              Column(
                children: [
                  Image.asset(
                    teamALogo, height: 41, width: 41,
                  ),
                  SizedBox(height: 4),
                  Text(teamA, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                ],
              ),
              Spacer(),
              Text(
                "VS",
                style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold, fontSize: 20,
                    shadows: [Shadow(blurRadius: 7, color: Colors.red.shade100, offset: Offset(0,0))]
                ),
              ),
              Spacer(),
              // Team 2
              Column(
                children: [
                  Image.asset(
                    teamBLogo, height: 41, width: 41,
                  ),
                  SizedBox(height: 4),
                  Text(teamB, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            status,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
