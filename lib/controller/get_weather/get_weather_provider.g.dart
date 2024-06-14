// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_weather_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getWeatherHash() => r'11385dbe3f1541b9ab037daa0e20760381683ded';

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

/// See also [getWeather].
@ProviderFor(getWeather)
const getWeatherProvider = GetWeatherFamily();

/// See also [getWeather].
class GetWeatherFamily extends Family<AsyncValue<WeatherModel>> {
  /// See also [getWeather].
  const GetWeatherFamily();

  /// See also [getWeather].
  GetWeatherProvider call({
    required BuildContext context,
  }) {
    return GetWeatherProvider(
      context: context,
    );
  }

  @override
  GetWeatherProvider getProviderOverride(
    covariant GetWeatherProvider provider,
  ) {
    return call(
      context: provider.context,
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
  String? get name => r'getWeatherProvider';
}

/// See also [getWeather].
class GetWeatherProvider extends AutoDisposeFutureProvider<WeatherModel> {
  /// See also [getWeather].
  GetWeatherProvider({
    required BuildContext context,
  }) : this._internal(
          (ref) => getWeather(
            ref as GetWeatherRef,
            context: context,
          ),
          from: getWeatherProvider,
          name: r'getWeatherProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getWeatherHash,
          dependencies: GetWeatherFamily._dependencies,
          allTransitiveDependencies:
              GetWeatherFamily._allTransitiveDependencies,
          context: context,
        );

  GetWeatherProvider._internal(
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
  Override overrideWith(
    FutureOr<WeatherModel> Function(GetWeatherRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetWeatherProvider._internal(
        (ref) => create(ref as GetWeatherRef),
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
  AutoDisposeFutureProviderElement<WeatherModel> createElement() {
    return _GetWeatherProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetWeatherProvider && other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetWeatherRef on AutoDisposeFutureProviderRef<WeatherModel> {
  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _GetWeatherProviderElement
    extends AutoDisposeFutureProviderElement<WeatherModel> with GetWeatherRef {
  _GetWeatherProviderElement(super.provider);

  @override
  BuildContext get context => (origin as GetWeatherProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
