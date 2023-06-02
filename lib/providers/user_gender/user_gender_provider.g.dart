// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_gender_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userGenderHash() => r'd539f4567fb93350229c46cd269f2ce7f4dab465';

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

typedef UserGenderRef = AutoDisposeFutureProviderRef<UserGender>;

/// See also [userGender].
@ProviderFor(userGender)
const userGenderProvider = UserGenderFamily();

/// See also [userGender].
class UserGenderFamily extends Family<AsyncValue<UserGender>> {
  /// See also [userGender].
  const UserGenderFamily();

  /// See also [userGender].
  UserGenderProvider call({
    required String userName,
  }) {
    return UserGenderProvider(
      userName: userName,
    );
  }

  @override
  UserGenderProvider getProviderOverride(
    covariant UserGenderProvider provider,
  ) {
    return call(
      userName: provider.userName,
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
  String? get name => r'userGenderProvider';
}

/// See also [userGender].
class UserGenderProvider extends AutoDisposeFutureProvider<UserGender> {
  /// See also [userGender].
  UserGenderProvider({
    required this.userName,
  }) : super.internal(
          (ref) => userGender(
            ref,
            userName: userName,
          ),
          from: userGenderProvider,
          name: r'userGenderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userGenderHash,
          dependencies: UserGenderFamily._dependencies,
          allTransitiveDependencies:
              UserGenderFamily._allTransitiveDependencies,
        );

  final String userName;

  @override
  bool operator ==(Object other) {
    return other is UserGenderProvider && other.userName == userName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
