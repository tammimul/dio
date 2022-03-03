import 'package:json_annotation/json_annotation.dart';

import 'model.dart';

  part 'single_user.g.dart';

@JsonSerializable()


class SingleUSerresponse{
  SingleUSerresponse();
  @JsonKey(name : "data")
  User user;

  factory SingleUSerresponse.fromJson(Map<String, dynamic> json) => _$SingleUSerresponseFromJson(json);
  Map<String, dynamic> toJson() => _$SingleUSerresponseToJson(this);
}