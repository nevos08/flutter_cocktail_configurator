import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderDetailsError extends StatelessWidget {
  const OrderDetailsError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Row(
                spacing: 16,
                children: [
                  IconButton.filled(
                      icon: const Icon(Icons.keyboard_arrow_left),
                      onPressed: () {
                        context.pop();
                      }),
                  Text("Bestelldetails",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            const Expanded(
                child:
                    Center(child: Text("Beim Abrufen der Bestellung ist ein Fehler aufgetreten.")))
          ],
        ),
      ),
    );
  }
}
