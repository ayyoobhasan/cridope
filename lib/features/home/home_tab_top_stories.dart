import 'package:cricidope/features/home/widgets/horizenatl_list_card.dart';
import 'package:flutter/material.dart';
import '../../core/app_color.dart';



class HomeTabTopStories extends StatelessWidget {
  final String mainTitle =
      "Virat Kohli, KL Rahul & Kuldeep Yadav craft India's biggest win vs Pakistan";
  final String subTitle =
      "Pakistan's Chase Never Really Got Going On Another Rain-Hit Day At The Asia Cup";
  final String mainImage = "assets/images/storyboard1.jpg";

  final List<Map<String, String>> highlights = [
    {
      "img": "assets/images/cropstoryboard.jpg",
      "text": "When menace meets precision - Jasprit Bumrah shows what he's all about"
    },
    {
      "img": "assets/images/cropstoryboard.jpg",
      "text": "Livingstone was in danger of becoming a highlight reel player"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 15, left: 15, top: 8, bottom: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Top stories",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
              Image.asset("assets/images/gridicons.png",
                  height: 18, width: 18, fit: BoxFit.cover),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          elevation: 1,
          color: AppColors.cardBg.withOpacity(0.9),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 1.0, bottom: 4, left: 2),
                child: Text("ASIA CUP 2023",
                    style: TextStyle(color: Colors.grey[500], fontSize: 12)),
              ),
              ClipRRect(
                child: Image.asset(mainImage,
                    height: 170, width: double.infinity, fit: BoxFit.cover),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(mainTitle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 4),
                    Text(subTitle,
                        style: TextStyle(
                            fontSize: 13, color: Colors.grey[700])),
                  ],
                ),
              ),
              HighlightHorizontalList(highlights: highlights),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22)),
                    ),
                    onPressed: () {},
                    child: Text("View full coverage",
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


