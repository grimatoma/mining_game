import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'point.freezed.dart';
part 'point.g.dart';

@freezed
class PlanetPoint with _$PlanetPoint {
  const PlanetPoint._();

  @HiveType(typeId: 18, adapterName: 'PlanetPointAdapter')
  const factory PlanetPoint(
          @HiveField(0) int x, @HiveField(1) int y, @HiveField(2) int z) =
      _PlanetPoint;

  factory PlanetPoint.fromJson(Map<String, dynamic> json) =>
      _$PlanetPointFromJson(json);

  @override
  String toString() => '$x,$y';

  bool get isNotNegative => x >= 0 && y >= 0 && x >= 0;
}
