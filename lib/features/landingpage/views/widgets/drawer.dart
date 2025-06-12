import 'package:flutter/material.dart';

class LandingpageDrawer extends StatelessWidget {
  const LandingpageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      icon: const Icon(
        Icons.more_vert,
        size: 42,
      ),
    );
  }
}
