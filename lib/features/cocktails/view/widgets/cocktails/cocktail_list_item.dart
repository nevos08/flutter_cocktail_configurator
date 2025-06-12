import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/models/cocktails_overview_configuration.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/viewmodel/cocktails.viewmodel.dart';

class CocktailListItem extends ConsumerWidget {
  const CocktailListItem({super.key, required this.configuration});

  final CocktailsOverviewConfiguration configuration;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      onTap: () {
        context.pushNamed("cocktail_details", pathParameters: {"id": configuration.id});
      },
      leading: IconButton(
          onPressed: () {
            ref
                .read(cocktailsViewModelProvider.notifier)
                .setConfigurationBookmarked(configuration.id, !configuration.isFavorite);
          },
          icon: configuration.isFavorite
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_outline)),
      title: Text(configuration.name),
      subtitle: Text(
        configuration.description,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: const Icon(Icons.keyboard_arrow_right),
    );
  }
}
