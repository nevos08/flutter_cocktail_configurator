import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mib33_webframeworks_prototyp_2/core/providers/current_user.provider.dart';
import 'package:mib33_webframeworks_prototyp_2/core/widgets/loading.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/auth/views/screens/login.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/auth/views/screens/register.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cart/view/screens/cart.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/view/screens/cocktail_details.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/cocktails/view/screens/cocktails.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/screens/bases.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/screens/done.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/screens/garnishes.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/screens/ingredients.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/screens/presets.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/screens/shell_route_layout.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/configurator/views/screens/size.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/landingpage/views/screens/landingpage.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/models/order.model.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/view/screens/order_details.screen.dart';
import 'package:mib33_webframeworks_prototyp_2/features/orders/view/screens/orders.screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'router.provider.g.dart';

@riverpod
GoRouter goRouter(Ref ref) {
  final navigatorKey = GlobalKey<NavigatorState>();
  final configuratorShellNavigatorKey = GlobalKey<NavigatorState>();
  final userAsyncValue = ref.watch(currentUserProvider);

  return GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: "/",
    routes: [
      GoRoute(
        name: "landingpage",
        path: "/",
        builder: (ctx, state) => userAsyncValue.when(
          data: (user) => user != null ? const LandingpageScreen() : const LoginScreen(),
          error: (err, stacktrace) => const Center(child: Text("Error")),
          loading: () => const LoadingScreen(),
        ),
      ),
      ShellRoute(
        navigatorKey: configuratorShellNavigatorKey,
        builder: (context, state, child) => ShellRouteLayoutScreen(
          child: child,
        ),
        routes: [
          GoRoute(
            name: "configurator-presets",
            path: "/configurator/presets",
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                child: const PresetsScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  final begin = const Offset(1.0, 0.0);
                  final end = Offset.zero;
                  final curve = Curves.ease;

                  final tween = Tween(begin: begin, end: end).chain(
                    CurveTween(curve: curve),
                  );

                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                },
              );
            },
          ),
          GoRoute(
            name: "configurator-size",
            path: "/configurator/size",
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                child: const SizeScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  final begin = const Offset(1.0, 0.0);
                  final end = Offset.zero;
                  final curve = Curves.ease;

                  final tween = Tween(begin: begin, end: end).chain(
                    CurveTween(curve: curve),
                  );

                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                },
              );
            },
          ),
          GoRoute(
            name: "configurator-bases",
            path: "/configurator/bases",
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                child: const BasesScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  final begin = const Offset(1.0, 0.0);
                  final end = Offset.zero;
                  final curve = Curves.ease;

                  final tween = Tween(begin: begin, end: end).chain(
                    CurveTween(curve: curve),
                  );

                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                },
              );
            },
          ),
          GoRoute(
            name: "configurator-ingredients",
            path: "/configurator/ingredients",
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                child: const IngredientsScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  final begin = const Offset(1.0, 0.0);
                  final end = Offset.zero;
                  final curve = Curves.ease;

                  final tween = Tween(begin: begin, end: end).chain(
                    CurveTween(curve: curve),
                  );

                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                },
              );
            },
          ),
          GoRoute(
            name: "configurator-garnishes",
            path: "/configurator/garnishes",
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                child: const GarnishesScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  final begin = const Offset(1.0, 0.0);
                  final end = Offset.zero;
                  final curve = Curves.ease;

                  final tween = Tween(begin: begin, end: end).chain(
                    CurveTween(curve: curve),
                  );

                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                },
              );
            },
          ),
          GoRoute(
            name: "configurator-done",
            path: "/configurator/done",
            builder: (ctx, state) => const DoneScreen(),
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                child: const DoneScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  final begin = const Offset(1.0, 0.0);
                  final end = Offset.zero;
                  final curve = Curves.ease;

                  final tween = Tween(begin: begin, end: end).chain(
                    CurveTween(curve: curve),
                  );

                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                },
              );
            },
          ),
        ],
      ),
      GoRoute(name: "cart", path: "/cart", builder: (context, state) => const CartScreen()),
      GoRoute(
          name: "orders",
          path: "/orders",
          builder: (context, state) => const OrdersScreen(),
          routes: [
            GoRoute(
                name: "order_details",
                path: ":id",
                builder: (context, state) {
                  return OrderDetailsScreen(order: state.extra as Order);
                }),
          ]),
      GoRoute(
          name: "cocktails",
          path: "/cocktails",
          builder: (context, state) => const CocktailsScreen(),
          routes: [
            GoRoute(
                name: "cocktail_details",
                path: ":id",
                builder: (context, state) =>
                    CocktailDetailsScreen(configurationId: state.pathParameters["id"]!))
          ]),
      GoRoute(name: "login", path: "/auth/signin", builder: (ctx, state) => const LoginScreen()),
      GoRoute(
          name: "register", path: "/auth/signup", builder: (ctx, state) => const RegisterScreen())
    ],
    redirect: (ctx, state) {
      final isLoggingIn =
          state.matchedLocation == "/auth/signin" || state.matchedLocation == "/auth/signup";

      if (userAsyncValue.isLoading) return null;
      final user = userAsyncValue.value;

      if (!isLoggingIn && user == null) return "/auth/signin";

      return null;
    },
  );
}
