import 'package:user_info/models/user_data.dart';

class UserGender implements UserData {
  final int? count;
  final String? gender;
  final String name;
  final double? probability;

  const UserGender({
    required this.count,
    required this.gender,
    required this.name,
    required this.probability,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserGender &&
          runtimeType == other.runtimeType &&
          count == other.count &&
          gender == other.gender &&
          name == other.name &&
          probability == other.probability);

  @override
  int get hashCode =>
      count.hashCode ^ gender.hashCode ^ name.hashCode ^ probability.hashCode;

  @override
  String toString() {
    return 'UserGender{ count: $count, gender: $gender, '
        'name: $name, probability: $probability,}';
  }

  UserGender copyWith({
    int? count,
    String? gender,
    String? name,
    double? probability,
  }) {
    return UserGender(
      count: count ?? this.count,
      gender: gender ?? this.gender,
      name: name ?? this.name,
      probability: probability ?? this.probability,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'gender': gender,
      'name': name,
      'probability': probability,
    };
  }

  factory UserGender.fromMap(Map<String, dynamic> map) {
    return UserGender(
      count: map['count'] as int?,
      gender: map['gender'] as String?,
      name: map['name'] as String,
      probability: map['probability'] as double?,
    );
  }
}
