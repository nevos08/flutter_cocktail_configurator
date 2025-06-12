import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/utils/currency_formatter.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';

class DoneScreenBaseList extends ConsumerWidget {
  const DoneScreenBaseList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bases = ref.watch(currentConfigurationProvider).value!.bases;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text("Basen",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        if (bases.isEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(child: Text("Du hast noch keine Basen ausgewählt.")),
          ),
        if (bases.isNotEmpty)
          ListView.builder(
            shrinkWrap: true,
            itemCount: bases.length,
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
                  "http://${Constants.BASE_API_URL}/${bases.elementAt(index).imgSrc}",
                  fit: BoxFit.cover,
                  width: 48,
                  height: 48,
                ),
              ),
              title: Text(bases.elementAt(index).name),
              subtitle: Text(CurrencyFormatter.format(
                  bases.elementAt(index).price, currencyFormatterSettings)),
            ),
          ),
      ],
    );
  }
}
