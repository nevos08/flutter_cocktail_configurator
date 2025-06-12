// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_details.viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cocktailDetailsViewModelHash() =>
    r'c52d3adec4244bddd0e56379cb09bd251e06b22d';

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

abstract class _$CocktailDetailsViewModel
    extends BuildlessAutoDisposeAsyncNotifier<CocktailDetailsViewModelState> {
  late final String configurationId;

  FutureOr<CocktailDetailsViewModelState> build(
    String configurationId,
  );
}

/// See also [CocktailDetailsViewModel].
@ProviderFor(CocktailDetailsViewModel)
const cocktailDetailsViewModelProvider = CocktailDetailsViewModelFamily();

/// See also [CocktailDetailsViewModel].
class CocktailDetailsViewModelFamily
    extends Family<AsyncValue<CocktailDetailsViewModelState>> {
  /// See also [CocktailDetailsViewModel].
  const CocktailDetailsViewModelFamily();

  /// See also [CocktailDetailsViewModel].
  CocktailDetailsViewModelProvider call(
    String configurationId,
  ) {
    return CocktailDetailsViewModelProvider(
      configurationId,
    );
  }

  @override
  CocktailDetailsViewModelProvider getProviderOverride(
    covariant CocktailDetailsViewModelProvider provider,
  ) {
    return call(
      provider.configurationId,
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
  String? get name => r'cocktailDetailsViewModelProvider';
}

/// See also [CocktailDetailsViewModel].
class CocktailDetailsViewModelProvider
    extends AutoDisposeAsyncNotifierProviderImpl<CocktailDetailsViewModel,
        CocktailDetailsViewModelState> {
  /// See also [CocktailDetailsViewModel].
  CocktailDetailsViewModelProvider(
    String configurationId,
  ) : this._internal(
          () => CocktailDetailsViewModel()..configurationId = configurationId,
          from: cocktailDetailsViewModelProvider,
          name: r'cocktailDetailsViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cocktailDetailsViewModelHash,
          dependencies: CocktailDetailsViewModelFamily._dependencies,
          allTransitiveDependencies:
              CocktailDetailsViewModelFamily._allTransitiveDependencies,
          configurationId: configurationId,
        );

  CocktailDetailsViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.configurationId,
  }) : super.internal();

  final String configurationId;

  @override
  FutureOr<CocktailDetailsViewModelState> runNotifierBuild(
    covariant CocktailDetailsViewModel notifier,
  ) {
    return notifier.build(
      configurationId,
    );
  }

  @override
  Override overrideWith(CocktailDetailsViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: CocktailDetailsViewModelProvider._internal(
        () => create()..configurationId = configurationId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        configurationId: configurationId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CocktailDetailsViewModel,
      CocktailDetailsViewModelState> createElement() {
    return _CocktailDetailsViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CocktailDetailsViewModelProvider &&
        other.configurationId == configurationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, configurationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CocktailDetailsViewModelRef
    on AutoDisposeAsyncNotifierProviderRef<CocktailDetailsViewModelState> {
  /// The parameter `configurationId` of this provider.
  String get configurationId;
}

class _CocktailDetailsViewModelProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CocktailDetailsViewModel,
        CocktailDetailsViewModelState> with CocktailDetailsViewModelRef {
  _CocktailDetailsViewModelProviderElement(super.provider);

  @override
  String get configurationId =>
      (origin as CocktailDetailsViewModelProvider).configurationId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
