import 'dart:math';

import 'package:hive/hive.dart';

class InstanceId {
  final String _guid;

  InstanceId.generate() : _guid = _generateId;
  InstanceId._load(this._guid);

  @override
  int get hashCode => _guid.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstanceId &&
          runtimeType == other.runtimeType &&
          _guid == other._guid;

  @override
  String toString() => _guid;
}

Random random = Random(DateTime.now().millisecond);
String get _generateId {
  const hexDigits = '0123456789abcdef';
  final List<String> uuid = List.filled(36, '');

  for (int i = 0; i < 36; i++) {
    final int hexPos = random.nextInt(16);
    uuid[i] = (hexDigits.substring(hexPos, hexPos + 1));
  }

  int pos = (int.parse(uuid[19], radix: 16) & 0x3) |
      0x8; // bits 6-7 of the clock_seq_hi_and_reserved to 01

  uuid[14] = '4'; // bits 12-15 of the time_hi_and_version field to 0010
  uuid[19] = hexDigits.substring(pos, pos + 1);

  uuid[8] = uuid[13] = uuid[18] = uuid[23] = '-';

  final buffer = StringBuffer();
  buffer.writeAll(uuid);
  return buffer.toString();
}

class InstanceIdAdapter extends TypeAdapter<InstanceId> {
  @override
  final typeId = 31;

  @override
  InstanceId read(BinaryReader reader) => InstanceId._load(reader.readString());

  @override
  void write(BinaryWriter writer, InstanceId obj) {
    writer.writeString(obj._guid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstanceIdAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
