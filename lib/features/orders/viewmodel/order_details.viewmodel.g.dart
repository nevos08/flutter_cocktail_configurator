// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details.viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$orderDetailsViewModelHash() =>
    r'6998b63e1415bf91f1dea4cfa8d9b62666c99e5f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$OrderDetailsViewModel
    extends BuildlessAutoDisposeNotifier<OrderDetailsState> {
  late final Order order;

  OrderDetailsState build(
    Order order,
  );
}

/// See also [OrderDetailsViewModel].
@ProviderFor(OrderDetailsViewModel)
const orderDetailsViewModelProvider = OrderDetailsViewModelFamily();

/// See also [OrderDetailsViewModel].
class OrderDetailsViewModelFamily extends Family<OrderDetailsState> {
  /// See also [OrderDetailsViewModel].
  const OrderDetailsViewModelFamily();

  /// See also [OrderDetailsViewModel].
  OrderDetailsViewModelProvider call(
    Order order,
  ) {
    return OrderDetailsViewModelProvider(
      order,
    );
  }

  @override
  OrderDetailsViewModelProvider getProviderOverride(
    covariant OrderDetailsViewModelProvider provider,
  ) {
    return call(
      provider.order,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'orderDetailsViewModelProvider';
}

/// See also [OrderDetailsViewModel].
class OrderDetailsViewModelProvider extends AutoDisposeNotifierProviderImpl<
    OrderDetailsViewModel, OrderDetailsState> {
  /// See also [OrderDetailsViewModel].
  OrderDetailsViewModelProvider(
    Order order,
  ) : this._internal(
          () => OrderDetailsViewModel()..order = order,
          from: orderDetailsViewModelProvider,
          name: r'orderDetailsViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$orderDetailsViewModelHash,
          dependencies: OrderDetailsViewModelFamily._dependencies,
          allTransitiveDependencies:
              OrderDetailsViewModelFamily._allTransitiveDependencies,
          order: order,
        );

  OrderDetailsViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.order,
  }) : super.internal();

  final Order order;

  @override
  OrderDetailsState runNotifierBuild(
    covariant OrderDetailsViewModel notifier,
  ) {
    return notifier.build(
      order,
    );
  }

  @override
  Override overrideWith(OrderDetailsViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: OrderDetailsViewModelProvider._internal(
        () => create()..order = order,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        order: order,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<OrderDetailsViewModel, OrderDetailsState>
      createElement() {
    return _OrderDetailsViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderDetailsViewModelProvider && other.order == order;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, order.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin OrderDetailsViewModelRef
    on AutoDisposeNotifierProviderRef<OrderDetailsState> {
  /// The parameter `order` of this provider.
  Order get order;
}

class _OrderDetailsViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<OrderDetailsViewModel,
        OrderDetailsState> with OrderDetailsViewModelRef {
  _OrderDetailsViewModelProviderElement(super.provider);

  @override
  Order get order => (origin as OrderDetailsViewModelProvider).order;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
