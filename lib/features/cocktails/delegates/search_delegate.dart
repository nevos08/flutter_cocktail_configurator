import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/models/cocktails_overview_configuration.model.dart';

class CocktailsSearchDelegate extends SearchDelegate {
  CocktailsSearchDelegate({required this.configurations});

  final List<CocktailsOverviewConfiguration> configurations;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<CocktailsOverviewConfiguration> results = configurations;
    if (query.isNotEmpty) {
      results = configurations
          .where((element) => element.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          close(context, null);
          context.pushNamed("cocktail_details", pathParameters: {"id": results[index].id});
        },
        title: Text(results[index].name),
        subtitle: Text(
          results[index].description,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<CocktailsOverviewConfiguration> suggestions = configurations;
    if (query.isNotEmpty) {
      suggestions = configurations
          .where((element) => element.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          close(context, null);
          context.pushNamed("cocktail_details", pathParameters: {"id": suggestions[index].id});
        },
        title: Text(suggestions[index].name),
        subtitle: Text(
          suggestions[index].description,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
