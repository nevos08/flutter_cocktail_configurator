import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/core/providers/current_user.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/landingpage/viewmodel/landingpage.viewmodel.dart';
import 'package:mib33_webframeworks_prototyp_2/features/landingpage/views/widgets/drawer.dart';
import 'package:mib33_webframeworks_prototyp_2/features/landingpage/views/widgets/landingpage_pageview.dart';

class LandingpageScreen extends ConsumerWidget {
  const LandingpageScreen({super.key});

  void _startNewConfiguration(BuildContext context) {
    context.goNamed("configurator-presets");
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider).asData!.value!;

    return Scaffold(
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child: Text(
                "Menü",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text("Warenkorb"),
              onTap: () {
                context.pushNamed("cart");
              },
            ),
            ListTile(
              leading: const Icon(Icons.toc),
              title: const Text("Meine Bestellungen"),
              onTap: () {
                context.pushNamed("orders");
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Abmelden"),
              onTap: () {
                ref.read(landingpageViewModelProvider.notifier).signOut();
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Willkommen,\n${user.fullName}",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const LandingpageDrawer()
                        ],
                      ),
                    ),
                    const LandingpagePageview(),
                  ],
                ),
              ),
              Positioned(
                bottom: 32,
                left: 16,
                right: 16,
                child: Row(
                  spacing: 16,
                  children: [
                    Expanded(
                      child: FilledButton.icon(
                        onPressed: () {
                          context.pushNamed("cocktails");
                        },
                        icon: const Icon(
                          Icons.local_bar,
                          size: 36,
                        ),
                        label: const Text("Meine Cocktails"),
                      ),
                    ),
                    Expanded(
                      child: FilledButton.icon(
                        onPressed: () {
                          _startNewConfiguration(context);
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 36,
                        ),
                        label: const Text("Neuer Cocktail"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
