// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleUSerresponse _$SingleUSerresponseFromJson(Map<String, dynamic> json) {
  return SingleUSerresponse()
    ..user = json['data'] == null
        ? null
        : User.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SingleUSerresponseToJson(SingleUSerresponse instance) =>
    <String, dynamic>{
      'data': instance.user,
    };
