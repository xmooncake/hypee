// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clothing_brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClothingBrandImpl _$$ClothingBrandImplFromJson(Map<String, dynamic> json) =>
    _$ClothingBrandImpl(
      id: (json['id'] as num).toInt(),
      imageUrl: json['imageUrl'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$ClothingBrandImplToJson(_$ClothingBrandImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'description': instance.description,
    };
