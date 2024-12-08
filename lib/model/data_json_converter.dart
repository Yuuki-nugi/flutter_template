import 'package:freezed_annotation/freezed_annotation.dart';

class CreatedAtField implements JsonConverter<DateTime, dynamic> {
  const CreatedAtField();

  @override
  DateTime fromJson(dynamic timestamp) {
    return DateTime.parse(timestamp);
  }

  @override
  dynamic toJson(DateTime dateTime) {
    return dateTime.toIso8601String();
  }
}

class UpdatedAtField implements JsonConverter<DateTime, dynamic> {
  const UpdatedAtField();

  @override
  DateTime fromJson(dynamic timestamp) {
    return DateTime.parse(timestamp);
  }

  @override
  String toJson(DateTime date) {
    return DateTime.now().toUtc().toIso8601String();
  }
}
