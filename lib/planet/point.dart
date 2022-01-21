import 'package:freezed_annotation/freezed_annotation.dart';

part 'point.freezed.dart';
part 'point.g.dart';

@freezed
class PlanetPoint with _$PlanetPoint {
  const PlanetPoint._();

  const factory PlanetPoint(int x, int y, int z) = _PlanetPoint;

  factory PlanetPoint.fromJson(Map<String, dynamic> json) =>
      _$PlanetPointFromJson(json);

  @override
  String toString() => '$x,$y';

  bool get isNotNegative => x >= 0 && y >= 0 && x >= 0;
}
