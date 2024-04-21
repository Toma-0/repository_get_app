// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchRepositoryDetailHash() =>
    r'13e84986555b36d01b9426b59379a178ab5fa658';

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

/// See also [fetchRepositoryDetail].
@ProviderFor(fetchRepositoryDetail)
const fetchRepositoryDetailProvider = FetchRepositoryDetailFamily();

/// See also [fetchRepositoryDetail].
class FetchRepositoryDetailFamily
    extends Family<AsyncValue<RepositoryDetailState>> {
  /// See also [fetchRepositoryDetail].
  const FetchRepositoryDetailFamily();

  /// See also [fetchRepositoryDetail].
  FetchRepositoryDetailProvider call(
    String id,
  ) {
    return FetchRepositoryDetailProvider(
      id,
    );
  }

  @override
  FetchRepositoryDetailProvider getProviderOverride(
    covariant FetchRepositoryDetailProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'fetchRepositoryDetailProvider';
}

/// See also [fetchRepositoryDetail].
class FetchRepositoryDetailProvider
    extends AutoDisposeFutureProvider<RepositoryDetailState> {
  /// See also [fetchRepositoryDetail].
  FetchRepositoryDetailProvider(
    String id,
  ) : this._internal(
          (ref) => fetchRepositoryDetail(
            ref as FetchRepositoryDetailRef,
            id,
          ),
          from: fetchRepositoryDetailProvider,
          name: r'fetchRepositoryDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchRepositoryDetailHash,
          dependencies: FetchRepositoryDetailFamily._dependencies,
          allTransitiveDependencies:
              FetchRepositoryDetailFamily._allTransitiveDependencies,
          id: id,
        );

  FetchRepositoryDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<RepositoryDetailState> Function(FetchRepositoryDetailRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchRepositoryDetailProvider._internal(
        (ref) => create(ref as FetchRepositoryDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<RepositoryDetailState> createElement() {
    return _FetchRepositoryDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchRepositoryDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchRepositoryDetailRef
    on AutoDisposeFutureProviderRef<RepositoryDetailState> {
  /// The parameter `id` of this provider.
  String get id;
}

class _FetchRepositoryDetailProviderElement
    extends AutoDisposeFutureProviderElement<RepositoryDetailState>
    with FetchRepositoryDetailRef {
  _FetchRepositoryDetailProviderElement(super.provider);

  @override
  String get id => (origin as FetchRepositoryDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
