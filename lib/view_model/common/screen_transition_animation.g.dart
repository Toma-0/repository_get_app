// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_transition_animation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pushPageTransitionAnimationHash() =>
    r'fda05e486267d3349a7b78810cd7fe940f2cbbeb';

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

/// See also [pushPageTransitionAnimation].
@ProviderFor(pushPageTransitionAnimation)
const pushPageTransitionAnimationProvider = PushPageTransitionAnimationFamily();

/// See also [pushPageTransitionAnimation].
class PushPageTransitionAnimationFamily extends Family<FadeTransition> {
  /// See also [pushPageTransitionAnimation].
  const PushPageTransitionAnimationFamily();

  /// See also [pushPageTransitionAnimation].
  PushPageTransitionAnimationProvider call(
    Animation<double> animation,
    Widget child,
  ) {
    return PushPageTransitionAnimationProvider(
      animation,
      child,
    );
  }

  @override
  PushPageTransitionAnimationProvider getProviderOverride(
    covariant PushPageTransitionAnimationProvider provider,
  ) {
    return call(
      provider.animation,
      provider.child,
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
  String? get name => r'pushPageTransitionAnimationProvider';
}

/// See also [pushPageTransitionAnimation].
class PushPageTransitionAnimationProvider
    extends AutoDisposeProvider<FadeTransition> {
  /// See also [pushPageTransitionAnimation].
  PushPageTransitionAnimationProvider(
    Animation<double> animation,
    Widget child,
  ) : this._internal(
          (ref) => pushPageTransitionAnimation(
            ref as PushPageTransitionAnimationRef,
            animation,
            child,
          ),
          from: pushPageTransitionAnimationProvider,
          name: r'pushPageTransitionAnimationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pushPageTransitionAnimationHash,
          dependencies: PushPageTransitionAnimationFamily._dependencies,
          allTransitiveDependencies:
              PushPageTransitionAnimationFamily._allTransitiveDependencies,
          animation: animation,
          child: child,
        );

  PushPageTransitionAnimationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.animation,
    required this.child,
  }) : super.internal();

  final Animation<double> animation;
  final Widget child;

  @override
  Override overrideWith(
    FadeTransition Function(PushPageTransitionAnimationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PushPageTransitionAnimationProvider._internal(
        (ref) => create(ref as PushPageTransitionAnimationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        animation: animation,
        child: child,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<FadeTransition> createElement() {
    return _PushPageTransitionAnimationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PushPageTransitionAnimationProvider &&
        other.animation == animation &&
        other.child == child;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, animation.hashCode);
    hash = _SystemHash.combine(hash, child.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PushPageTransitionAnimationRef on AutoDisposeProviderRef<FadeTransition> {
  /// The parameter `animation` of this provider.
  Animation<double> get animation;

  /// The parameter `child` of this provider.
  Widget get child;
}

class _PushPageTransitionAnimationProviderElement
    extends AutoDisposeProviderElement<FadeTransition>
    with PushPageTransitionAnimationRef {
  _PushPageTransitionAnimationProviderElement(super.provider);

  @override
  Animation<double> get animation =>
      (origin as PushPageTransitionAnimationProvider).animation;
  @override
  Widget get child => (origin as PushPageTransitionAnimationProvider).child;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
