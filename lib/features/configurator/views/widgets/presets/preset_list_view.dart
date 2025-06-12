import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/constants/constants.dart';
import 'package:mib33_webframeworks_prototyp_2/core/models/configuration.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/configurator.viewmodel.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/preset.viewmodel.dart';

class PresetListView extends ConsumerWidget {
  const PresetListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final presetsAsyncValue = ref.watch(presetViewModelProvider);

    return Expanded(
      child: presetsAsyncValue.when(
          data: (presets) => ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.only(bottom: 128),
                itemCount: presets.length,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Card(
                    clipBehavior: Clip.hardEdge,
                    child: Stack(
                      children: [
                        Image.network(
                          "http://${Constants.BASE_API_URL}${presets[index].imgSrc}",
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Material(
                            type: MaterialType.transparency,
                            child: InkWell(
                              onTap: () {
                                ref.read(currentConfigurationProvider.notifier).setConfiguration(
                                      Configuration(
                                          name: presets[index].configuration.name,
                                          description: presets[index].configuration.description,
                                          size: presets[index].cocktail.size,
                                          bases: presets[index].cocktail.bases.toSet(),
                                          ingredients: presets[index].cocktail.ingredients.toSet(),
                                          garnishes: presets[index].cocktail.garnishes.toSet()),
                                    );

                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text(
                                        "Die Vorlage ${presets[index].configuration.name} wurde erfolgreich geladen.")));

                                ref.read(configuratorViewModelProvider.notifier).nextPage();
                              },
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                padding: const EdgeInsets.all(16),
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [Colors.black45, Colors.transparent],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      presets[index].configuration.name,
                                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      presets[index].configuration.description,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
          error: (err, _) => const Center(
                child: Text("ERROR"),
              ),
          loading: () => const Center(
                child: CircularProgressIndicator.adaptive(),
              )),
    );
  }
}
