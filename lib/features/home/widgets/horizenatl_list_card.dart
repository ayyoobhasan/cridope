
import 'package:flutter/material.dart';

import '../../../core/app_color.dart';


class HighlightHorizontalList extends StatelessWidget {
  final List<Map<String, String>> highlights;
  final Color? cardColor;

  const HighlightHorizontalList({
    required this.highlights,
    this.cardColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.only(left: 8, bottom: 2, top: 2),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: highlights.length,
        separatorBuilder: (_, __) => SizedBox(width: 8),
        itemBuilder: (ctx, idx) {
          return Container(
            width: 270,
            color: cardColor ?? AppColors.cardBg,
            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.asset(
                    highlights[idx]["img"]!,
                    height: 38,
                    width: 38,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 9),
                Expanded(
                  child: Text(
                    highlights[idx]["text"]!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
