// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Family _$FamilyFromJson(Map<String, dynamic> json) {
  return Family()
    ..name = json['name'] as String
    ..father = json['father'] == null
        ? null
        : User.fromJson(json['father'] as Map<String, dynamic>)
    ..friends = (json['friends'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..keywords = (json['keywords'] as List)?.map((e) => e as String)?.toList()
    ..age = json['age'] as num
    ..loved = json['+1'] as int;
}

Map<String, dynamic> _$FamilyToJson(Family instance) => <String, dynamic>{
      'name': instance.name,
      'father': instance.father,
      'friends': instance.friends,
      'keywords': instance.keywords,
      'age': instance.age,
      '+1': instance.loved
    };
