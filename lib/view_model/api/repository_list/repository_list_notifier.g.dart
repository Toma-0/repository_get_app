// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchRepositoryListHash() =>
    r'eec658cb8b1dbcf143f4a91e8776973cf50588de';

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
    extends Family<AsyncValue<RepositoryListNotifierState>> {
  /// See also [fetchRepositoryList].
  const FetchRepositoryListFamily();

  /// See also [fetchRepositoryList].
  FetchRepositoryListProvider call(
    String query,
    int first,
    String? after,
  ) {
    return FetchRepositoryListProvider(
      query,
      first,
      after,
    );
  }

  @override
  FetchRepositoryListProvider getProviderOverride(
    covariant FetchRepositoryListProvider provider,
  ) {
    return call(
      provider.query,
      provider.first,
      provider.after,
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
    extends AutoDisposeFutureProvider<RepositoryListNotifierState> {
  /// See also [fetchRepositoryList].
  FetchRepositoryListProvider(
    String query,
    int first,
    String? after,
  ) : this._internal(
          (ref) => fetchRepositoryList(
            ref as FetchRepositoryListRef,
            query,
            first,
            after,
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
          after: after,
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
    required this.after,
  }) : super.internal();

  final String query;
  final int first;
  final String? after;

  @override
  Override overrideWith(
    FutureOr<RepositoryListNotifierState> Function(
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
        after: after,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<RepositoryListNotifierState>
      createElement() {
    return _FetchRepositoryListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchRepositoryListProvider &&
        other.query == query &&
        other.first == first &&
        other.after == after;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, first.hashCode);
    hash = _SystemHash.combine(hash, after.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchRepositoryListRef
    on AutoDisposeFutureProviderRef<RepositoryListNotifierState> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `first` of this provider.
  int get first;

  /// The parameter `after` of this provider.
  String? get after;
}

class _FetchRepositoryListProviderElement
    extends AutoDisposeFutureProviderElement<RepositoryListNotifierState>
    with FetchRepositoryListRef {
  _FetchRepositoryListProviderElement(super.provider);

  @override
  String get query => (origin as FetchRepositoryListProvider).query;
  @override
  int get first => (origin as FetchRepositoryListProvider).first;
  @override
  String? get after => (origin as FetchRepositoryListProvider).after;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
