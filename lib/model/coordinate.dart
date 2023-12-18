class Coordinate {
  final double latitude;
  final double longitude;

  const Coordinate(this.latitude, this.longitude);

  @override
  String toString() => 'Coordinate($latitude, $longitude)';

  factory Coordinate.fromJson(Map<String, dynamic> json) {
    return Coordinate(
      json['latitude'],
      json['longitude'],
    );
  }
}