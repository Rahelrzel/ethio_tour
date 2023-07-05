// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentWeatherHash() => r'1d7bb95b6e59e7195f92aa9c88ae9318bfb71206';

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

typedef CurrentWeatherRef = AutoDisposeFutureProviderRef<Map<String, dynamic>>;

/// See also [currentWeather].
@ProviderFor(currentWeather)
const currentWeatherProvider = CurrentWeatherFamily();

/// See also [currentWeather].
class CurrentWeatherFamily extends Family<AsyncValue<Map<String, dynamic>>> {
  /// See also [currentWeather].
  const CurrentWeatherFamily();

  /// See also [currentWeather].
  CurrentWeatherProvider call({
    required double lat,
    required double lon,
  }) {
    return CurrentWeatherProvider(
      lat: lat,
      lon: lon,
    );
  }

  @override
  CurrentWeatherProvider getProviderOverride(
    covariant CurrentWeatherProvider provider,
  ) {
    return call(
      lat: provider.lat,
      lon: provider.lon,
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
  String? get name => r'currentWeatherProvider';
}

/// See also [currentWeather].
class CurrentWeatherProvider
    extends AutoDisposeFutureProvider<Map<String, dynamic>> {
  /// See also [currentWeather].
  CurrentWeatherProvider({
    required this.lat,
    required this.lon,
  }) : super.internal(
          (ref) => currentWeather(
            ref,
            lat: lat,
            lon: lon,
          ),
          from: currentWeatherProvider,
          name: r'currentWeatherProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$currentWeatherHash,
          dependencies: CurrentWeatherFamily._dependencies,
          allTransitiveDependencies:
              CurrentWeatherFamily._allTransitiveDependencies,
        );

  final double lat;
  final double lon;

  @override
  bool operator ==(Object other) {
    return other is CurrentWeatherProvider &&
        other.lat == lat &&
        other.lon == lon;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, lat.hashCode);
    hash = _SystemHash.combine(hash, lon.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
