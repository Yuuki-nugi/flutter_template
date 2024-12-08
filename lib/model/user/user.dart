// user.dart
import 'package:flutter_template/model/data_json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
      {required String id,
      required String username,
      required String display_name,
      @CreatedAtField() required DateTime? created_at,
      @UpdatedAtField() required DateTime? updated_at}) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
