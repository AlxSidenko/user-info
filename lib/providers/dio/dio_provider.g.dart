// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'9716017dfc4e3c5531fe62a15eb0c62a76ad0678';

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

typedef DioRef = AutoDisposeProviderRef<Dio>;

/// See also [dio].
@ProviderFor(dio)
const dioProvider = DioFamily();

/// See also [dio].
class DioFamily extends Family<Dio> {
  /// See also [dio].
  const DioFamily();

  /// See also [dio].
  DioProvider call({
    required String baseUrl,
  }) {
    return DioProvider(
      baseUrl: baseUrl,
    );
  }

  @override
  DioProvider getProviderOverride(
    covariant DioProvider provider,
  ) {
    return call(
      baseUrl: provider.baseUrl,
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
  String? get name => r'dioProvider';
}

/// See also [dio].
class DioProvider extends AutoDisposeProvider<Dio> {
  /// See also [dio].
  DioProvider({
    required this.baseUrl,
  }) : super.internal(
          (ref) => dio(
            ref,
            baseUrl: baseUrl,
          ),
          from: dioProvider,
          name: r'dioProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
          dependencies: DioFamily._dependencies,
          allTransitiveDependencies: DioFamily._allTransitiveDependencies,
        );

  final String baseUrl;

  @override
  bool operator ==(Object other) {
    return other is DioProvider && other.baseUrl == baseUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, baseUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
