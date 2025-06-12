import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';

class DoneScreenSize extends ConsumerWidget {
  const DoneScreenSize({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = ref.watch(currentConfigurationProvider).value!.size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Größe",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Gewählte Größe:"), Text("${size.name} (${size.metricSize}ml)")],
              ),
            )
          ]),
    );
  }
}
