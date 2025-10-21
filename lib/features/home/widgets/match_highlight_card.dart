

import 'package:flutter/material.dart';

import '../../../core/app_color.dart';


class MatchHighlightCard extends StatelessWidget {
  final String teamA;
  final String teamB;
  final String matchInfo;
  final String status;
  final Color statusColor;

  const MatchHighlightCard({
    required this.teamA,
    required this.teamB,
    required this.matchInfo,
    required this.status,
    this.statusColor = Colors.red,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 1)],
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Text(teamA, style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Spacer(),
                Text('VS', style: TextStyle(fontWeight: FontWeight.bold)),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Text(teamB, style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(matchInfo, style: TextStyle(color: Colors.black87, fontSize: 13)),
            SizedBox(height: 4),
            Text(status, style: TextStyle(color: statusColor, fontWeight: FontWeight.w600, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
