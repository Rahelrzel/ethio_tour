// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rateHash() => r'e46481fef522b824efd4df59c0810f7b7931d5e0';

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

typedef RateRef = AutoDisposeFutureProviderRef<double>;

/// See also [rate].
@ProviderFor(rate)
const rateProvider = RateFamily();

/// See also [rate].
class RateFamily extends Family<AsyncValue<double>> {
  /// See also [rate].
  const RateFamily();

  /// See also [rate].
  RateProvider call({
    required String have,
    required String want,
  }) {
    return RateProvider(
      have: have,
      want: want,
    );
  }

  @override
  RateProvider getProviderOverride(
    covariant RateProvider provider,
  ) {
    return call(
      have: provider.have,
      want: provider.want,
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
  String? get name => r'rateProvider';
}

/// See also [rate].
class RateProvider extends AutoDisposeFutureProvider<double> {
  /// See also [rate].
  RateProvider({
    required this.have,
    required this.want,
  }) : super.internal(
          (ref) => rate(
            ref,
            have: have,
            want: want,
          ),
          from: rateProvider,
          name: r'rateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$rateHash,
          dependencies: RateFamily._dependencies,
          allTransitiveDependencies: RateFamily._allTransitiveDependencies,
        );

  final String have;
  final String want;

  @override
  bool operator ==(Object other) {
    return other is RateProvider && other.have == have && other.want == want;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, have.hashCode);
    hash = _SystemHash.combine(hash, want.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
