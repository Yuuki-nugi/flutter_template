// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      display_name: json['display_name'] as String,
      created_at: const CreatedAtField().fromJson(json['created_at']),
      updated_at: const UpdatedAtField().fromJson(json['updated_at']),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'display_name': instance.display_name,
      'created_at': _$JsonConverterToJson<dynamic, DateTime>(
          instance.created_at, const CreatedAtField().toJson),
      'updated_at': _$JsonConverterToJson<dynamic, DateTime>(
          instance.updated_at, const UpdatedAtField().toJson),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
