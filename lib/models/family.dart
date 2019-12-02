import 'package:json_annotation/json_annotation.dart';
import "user.dart";
part 'family.g.dart';

@JsonSerializable()
class Family {
    Family();

    String name;
    User father;
    List<User> friends;
    List<String> keywords;
    num age;
    @JsonKey(ignore: true) dynamic md;
    @JsonKey(name: '+1') int loved;
    
    factory Family.fromJson(Map<String,dynamic> json) => _$FamilyFromJson(json);
    Map<String, dynamic> toJson() => _$FamilyToJson(this);
}
