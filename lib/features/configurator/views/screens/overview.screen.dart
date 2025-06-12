import 'package:flutter/widgets.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [Text("Herzlichen Glückwünsch!")],
      ),
    );
  }
}
