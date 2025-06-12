import 'package:flutter/material.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/widgets/add_to_cart_button.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/widgets/done_screen/base_list.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/widgets/done_screen/garnishes_list.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/widgets/done_screen/ingredient_list.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/widgets/done_screen/size.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("Herzlichen Glückwünsch!",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                  "Du bist am Ende des Konfigurators angekommen. Schaue dir hier deine Konfiguration nochmal an und nimm gegebenenfalls Änderungen vor.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Theme.of(context).colorScheme.onSecondary)),
            ),
            const SizedBox(height: 8),
            const DoneScreenSize(),
            const DoneScreenBaseList(),
            const DoneScreenIngredientList(),
            const DoneScreenGarnishesList(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(),
            ),
            const SizedBox(height: 16),
            const AddToCartButton(),
            const SizedBox(height: 196),
          ],
        ),
      ),
    );
  }
}
