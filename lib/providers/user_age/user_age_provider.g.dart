// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_age_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userAgeHash() => r'52d8649a5e992af3917bfcf5dd86f9b3b1037d43';

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

typedef UserAgeRef = AutoDisposeFutureProviderRef<UserAge>;

/// See also [userAge].
@ProviderFor(userAge)
const userAgeProvider = UserAgeFamily();

/// See also [userAge].
class UserAgeFamily extends Family<AsyncValue<UserAge>> {
  /// See also [userAge].
  const UserAgeFamily();

  /// See also [userAge].
  UserAgeProvider call({
    required String userName,
  }) {
    return UserAgeProvider(
      userName: userName,
    );
  }

  @override
  UserAgeProvider getProviderOverride(
    covariant UserAgeProvider provider,
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
  String? get name => r'userAgeProvider';
}

/// See also [userAge].
class UserAgeProvider extends AutoDisposeFutureProvider<UserAge> {
  /// See also [userAge].
  UserAgeProvider({
    required this.userName,
  }) : super.internal(
          (ref) => userAge(
            ref,
            userName: userName,
          ),
          from: userAgeProvider,
          name: r'userAgeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userAgeHash,
          dependencies: UserAgeFamily._dependencies,
          allTransitiveDependencies: UserAgeFamily._allTransitiveDependencies,
        );

  final String userName;

  @override
  bool operator ==(Object other) {
    return other is UserAgeProvider && other.userName == userName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
