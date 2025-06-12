import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:mib33_webframeworks_prototyp_2/core/providers/cart.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/core/providers/router.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/providers/current_configuration.provider.dart';

import 'core/theme/theme.dart';

void main() {
  Intl.defaultLocale = "de_DE";
  initializeDateFormatting("de_DE");
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    ref.watch(currentConfigurationProvider);
    ref.watch(cartProvider);
    return MaterialApp.router(
      routerConfig: ref.watch(goRouterProvider),
      theme: theme,
      debugShowCheckedModeBanner: false,
    );
  }
}
