// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'size_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sizeNotifierHash() => r'b170b8bbd9e4b0928fc69b46e288a06400433b45';

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

abstract class _$SizeNotifier extends BuildlessAutoDisposeNotifier<SizeState> {
  late final BuildContext context;

  SizeState build(
    BuildContext context,
  );
}

/// See also [SizeNotifier].
@ProviderFor(SizeNotifier)
const sizeNotifierProvider = SizeNotifierFamily();

/// See also [SizeNotifier].
class SizeNotifierFamily extends Family<SizeState> {
  /// See also [SizeNotifier].
  const SizeNotifierFamily();

  /// See also [SizeNotifier].
  SizeNotifierProvider call(
    BuildContext context,
  ) {
    return SizeNotifierProvider(
      context,
    );
  }

  @override
  SizeNotifierProvider getProviderOverride(
    covariant SizeNotifierProvider provider,
  ) {
    return call(
      provider.context,
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
  String? get name => r'sizeNotifierProvider';
}

/// See also [SizeNotifier].
class SizeNotifierProvider
    extends AutoDisposeNotifierProviderImpl<SizeNotifier, SizeState> {
  /// See also [SizeNotifier].
  SizeNotifierProvider(
    BuildContext context,
  ) : this._internal(
          () => SizeNotifier()..context = context,
          from: sizeNotifierProvider,
          name: r'sizeNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sizeNotifierHash,
          dependencies: SizeNotifierFamily._dependencies,
          allTransitiveDependencies:
              SizeNotifierFamily._allTransitiveDependencies,
          context: context,
        );

  SizeNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.context,
  }) : super.internal();

  final BuildContext context;

  @override
  SizeState runNotifierBuild(
    covariant SizeNotifier notifier,
  ) {
    return notifier.build(
      context,
    );
  }

  @override
  Override overrideWith(SizeNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: SizeNotifierProvider._internal(
        () => create()..context = context,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SizeNotifier, SizeState> createElement() {
    return _SizeNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SizeNotifierProvider && other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SizeNotifierRef on AutoDisposeNotifierProviderRef<SizeState> {
  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _SizeNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<SizeNotifier, SizeState>
    with SizeNotifierRef {
  _SizeNotifierProviderElement(super.provider);

  @override
  BuildContext get context => (origin as SizeNotifierProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
