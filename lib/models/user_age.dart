import 'package:user_info/models/user_data.dart';

class UserAge implements UserData {
  final int? age;
  final int? count;
  final String name;

  const UserAge({
    required this.age,
    required this.count,
    required this.name,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserAge &&
          runtimeType == other.runtimeType &&
          age == other.age &&
          count == other.count &&
          name == other.name);

  @override
  int get hashCode => age.hashCode ^ count.hashCode ^ name.hashCode;

  @override
  String toString() {
    return 'UserAge{ age: $age, count: $count, name: $name,}';
  }

  UserAge copyWith({
    int? age,
    int? count,
    String? name,
  }) {
    return UserAge(
      age: age ?? this.age,
      count: count ?? this.count,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'age': age,
      'count': count,
      'name': name,
    };
  }

  factory UserAge.fromMap(Map<String, dynamic> map) {
    return UserAge(
      age: map['age'] as int?,
      count: map['count'] as int?,
      name: map['name'] as String,
    );
  }
}
