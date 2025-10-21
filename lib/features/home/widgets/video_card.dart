

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FeaturedVideoCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const FeaturedVideoCard({
    required this.imagePath,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          // Play button overlay (centered)
          Positioned.fill(
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.32),
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(13),
                child: Icon(
                  Icons.play_arrow_rounded,
                  size: 54,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Bottom gradient + video title text (overlays image)
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.fromLTRB(12, 10, 12, 14),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.77),
                    Colors.transparent,
                  ],
                ),
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  shadows: [Shadow(color: Colors.black45, blurRadius: 6)],
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}