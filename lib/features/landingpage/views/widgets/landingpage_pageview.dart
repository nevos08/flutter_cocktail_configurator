import 'package:flutter/material.dart';

class LandingpagePageview extends StatelessWidget {
  const LandingpagePageview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: PageView(
        pageSnapping: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  const BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              clipBehavior: Clip.hardEdge,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/cocktails/cocktail_mojito.jpg",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  const BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 1,
                    color: Colors.black26,
                  )
                ],
              ),
              clipBehavior: Clip.hardEdge,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/cocktails/cocktail_whiskey_sour.png",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
