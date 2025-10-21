

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cricidope/features/home/widgets/video_card.dart';
import 'package:flutter/material.dart';



class FeaturedVideosSection extends StatefulWidget {
  @override
  State<FeaturedVideosSection> createState() => _FeaturedVideosSectionState();
}

class _FeaturedVideosSectionState extends State<FeaturedVideosSection> {
  final List<Map<String, String>> videos = [
    {
      "img": "assets/images/storyboard1.jpg", // your asset thumbnail
      "title": "Virat Kohli, KL Rahul and Kuldeep Yadav craft India's biggest win vs Pakistan"
    },
    {
      "img":  "assets/images/storyboard1.jpg", // your asset
      "title": "Another Big Win: Highlights from Asia Cup"
    },
    {
      "img": "assets/images/storyboard1.jpg", // your asset
      "title": "Top 10 Wickets: Exciting Cricket Moments"
    },
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
          child: Text(
            "FEATURED VIDEOS",
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 1.2,
            ),
          ),
        ),
        CarouselSlider.builder(
          itemCount: videos.length,
          itemBuilder: (context, idx, realIdx) {
            final video = videos[idx];
            return FeaturedVideoCard(
              imagePath: video["img"]!,
              title: video["title"]!,
            );
          },
          options: CarouselOptions(
            height: 220,
            enlargeCenterPage: true,
            autoPlay: false,
            initialPage: 0,
            viewportFraction: 0.74,
            enableInfiniteScroll: true,
            onPageChanged: (index, reason) {
              setState(() {
                current = index;
              });
            },
          ),
        ),
        // SizedBox(height: 10),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: videos.asMap().entries.map((entry) {
        //     return Container(
        //       width: current == entry.key ? 13 : 10,
        //       height: current == entry.key ? 13 : 10,
        //       margin: EdgeInsets.symmetric(horizontal: 4),
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: current == entry.key ? Colors.red : Colors.grey[300],
        //       ),
        //     );
        //   }).toList(),
        // ),
      ],
    );
  }

}







