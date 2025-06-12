import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/utils/currency_formatter.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';

class DoneScreenGarnishesList extends ConsumerWidget {
  const DoneScreenGarnishesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final garnishes = ref.watch(currentConfigurationProvider).value!.garnishes;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text("Garnituren",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        if (garnishes.isEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(child: Text("Du hast noch keine Garnituren ausgewählt.")),
          ),
        if (garnishes.isNotEmpty)
          ListView.builder(
            shrinkWrap: true,
            itemCount: garnishes.length,
            padding: const EdgeInsets.all(0),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 4,
              ),
              leading: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.network(
                  "http://${Constants.BASE_API_URL}/${garnishes.elementAt(index).imgSrc}",
                  fit: BoxFit.cover,
                  width: 48,
                  height: 48,
                ),
              ),
              title: Text(garnishes.elementAt(index).name),
              subtitle: Text(CurrencyFormatter.format(
                  garnishes.elementAt(index).price, currencyFormatterSettings)),
            ),
          ),
      ],
    );
  }
}
