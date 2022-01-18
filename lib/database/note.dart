import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class Note {
  @JsonKey(name: 'id')
  @HiveField(0)
  String key;
  @HiveField(1)
  String title;
  @HiveField(2)
  String body = '';

  Note(this.title) : key = UniqueKey().toString();

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  Map<String, dynamic> toJson() => _$NoteToJson(this);

  @override
  String toString() => toJson().toString();
}
