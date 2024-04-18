// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_list_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchRepositoryListHash() =>
    r'861d7ee1a74b2c43b7d52cbbd235a3d9f31143f0';

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

/// See also [fetchRepositoryList].
@ProviderFor(fetchRepositoryList)
const fetchRepositoryListProvider = FetchRepositoryListFamily();

/// See also [fetchRepositoryList].
class FetchRepositoryListFamily
    extends Family<AsyncValue<List<RepositoryListState>>> {
  /// See also [fetchRepositoryList].
  const FetchRepositoryListFamily();

  /// See also [fetchRepositoryList].
  FetchRepositoryListProvider call(
    String query,
    int first,
  ) {
    return FetchRepositoryListProvider(
      query,
      first,
    );
  }

  @override
  FetchRepositoryListProvider getProviderOverride(
    covariant FetchRepositoryListProvider provider,
  ) {
    return call(
      provider.query,
      provider.first,
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
  String? get name => r'fetchRepositoryListProvider';
}

/// See also [fetchRepositoryList].
class FetchRepositoryListProvider
    extends AutoDisposeFutureProvider<List<RepositoryListState>> {
  /// See also [fetchRepositoryList].
  FetchRepositoryListProvider(
    String query,
    int first,
  ) : this._internal(
          (ref) => fetchRepositoryList(
            ref as FetchRepositoryListRef,
            query,
            first,
          ),
          from: fetchRepositoryListProvider,
          name: r'fetchRepositoryListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchRepositoryListHash,
          dependencies: FetchRepositoryListFamily._dependencies,
          allTransitiveDependencies:
              FetchRepositoryListFamily._allTransitiveDependencies,
          query: query,
          first: first,
        );

  FetchRepositoryListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.first,
  }) : super.internal();

  final String query;
  final int first;

  @override
  Override overrideWith(
    FutureOr<List<RepositoryListState>> Function(
            FetchRepositoryListRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchRepositoryListProvider._internal(
        (ref) => create(ref as FetchRepositoryListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        first: first,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<RepositoryListState>> createElement() {
    return _FetchRepositoryListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchRepositoryListProvider &&
        other.query == query &&
        other.first == first;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, first.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchRepositoryListRef
    on AutoDisposeFutureProviderRef<List<RepositoryListState>> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `first` of this provider.
  int get first;
}

class _FetchRepositoryListProviderElement
    extends AutoDisposeFutureProviderElement<List<RepositoryListState>>
    with FetchRepositoryListRef {
  _FetchRepositoryListProviderElement(super.provider);

  @override
  String get query => (origin as FetchRepositoryListProvider).query;
  @override
  int get first => (origin as FetchRepositoryListProvider).first;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
