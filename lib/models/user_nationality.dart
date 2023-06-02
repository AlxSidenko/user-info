import 'package:flutter/foundation.dart';
import 'package:user_info/models/country.dart';
import 'package:user_info/models/user_data.dart';

class UserNationality implements UserData {
  final List<Country> countries;
  final String name;

  const UserNationality({
    required this.countries,
    required this.name,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserNationality &&
          runtimeType == other.runtimeType &&
          listEquals(countries, other.countries) &&
          name == other.name);

  @override
  int get hashCode => countries.hashCode ^ name.hashCode;

  @override
  String toString() {
    return 'UserNationality{ countries: $countries, name: $name,}';
  }

  UserNationality copyWith({
    List<Country>? countries,
    String? name,
  }) {
    return UserNationality(
      countries: countries ?? this.countries,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'country': countries,
      'name': name,
    };
  }

  factory UserNationality.fromMap(Map<String, dynamic> map) {
    return UserNationality(
      countries:
          List.from(map['country']).map((e) => Country.fromMap(e)).toList(),
      name: map['name'] as String,
    );
  }
}
