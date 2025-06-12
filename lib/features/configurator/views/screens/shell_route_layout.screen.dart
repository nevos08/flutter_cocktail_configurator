import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/data/steps.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/configurator.viewmodel.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/viewmodel/size.viewmodel.dart';

class ShellRouteLayoutScreen extends ConsumerWidget {
  const ShellRouteLayoutScreen({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.invalidate(sizeViewModelProvider); // We need to initialize the sizes
    final viewModelState = ref.watch(configuratorViewModelProvider);

    ref.listen(configuratorViewModelProvider, (prevState, nextState) {
      bool pop = false;
      if (prevState != null && prevState.currentStep.step > nextState.currentStep.step) {
        pop = true;
      }

      final nextStep = nextState.currentStep;

      if (pop) {
        context.pop();
      } else {
        context.pushNamed(nextStep.href);
      }
    });

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 16,
                    children: [
                      IconButton.filled(
                        onPressed: () {
                          context.goNamed("landingpage");
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_left,
                          size: 28,
                        ),
                      ),
                      Text(
                        "Zurück",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        ref.read(currentConfigurationProvider.notifier).resetConfiguration();
                      },
                      icon: const Icon(Icons.delete))
                ],
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          child,
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: kBottomNavigationBarHeight * 3,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black54,
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 24,
                children: [
                  IconButton.filled(
                    onPressed: viewModelState.currentPage == 0
                        ? null
                        : () {
                            ref
                                .read(configuratorViewModelProvider.notifier)
                                .setCurrentPage(viewModelState.currentPage - 1);
                          },
                    icon: const Icon(
                      Icons.keyboard_arrow_left,
                      size: 46,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 16,
                      children: [
                        Text(
                          viewModelState.currentStep.title,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                        ),
                        Row(
                          spacing: 8,
                          children: [
                            for (int i = 0; i < steps.length; i++)
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: viewModelState.currentPage >= i
                                        ? Theme.of(context).colorScheme.primary
                                        : Theme.of(context).colorScheme.surfaceDim,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                              )
                          ],
                        )
                      ],
                    ),
                  ),
                  IconButton.filled(
                    onPressed: viewModelState.currentPage >= steps.length - 1
                        ? null
                        : () {
                            ref
                                .read(configuratorViewModelProvider.notifier)
                                .setCurrentPage(viewModelState.currentPage + 1);
                          },
                    icon: const Icon(Icons.keyboard_arrow_right, size: 46),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
