class Country {
  final String countryId;
  final double probability;

  const Country({
    required this.countryId,
    required this.probability,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is Country &&
              runtimeType == other.runtimeType &&
              countryId == other.countryId &&
              probability == other.probability);

  @override
  int get hashCode => countryId.hashCode ^ probability.hashCode;

  @override
  String toString() {
    return 'Country{ countryId: $countryId, probability: $probability,}';
  }

  Country copyWith({
    String? countryId,
    double? probability,
  }) {
    return Country(
      countryId: countryId ?? this.countryId,
      probability: probability ?? this.probability,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'country_id': countryId,
      'probability': probability,
    };
  }

  factory Country.fromMap(Map<String, dynamic> map) {
    return Country(
      countryId: map['country_id'] as String,
      probability: map['probability'] as double,
    );
  }
}