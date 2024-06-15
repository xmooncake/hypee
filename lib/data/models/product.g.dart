// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num).toInt(),
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      size: json['size'] as String,
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
      brand: ClothingBrand.fromJson(json['brand'] as Map<String, dynamic>),
      addedBy: User.fromJson(json['addedBy'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrls': instance.imageUrls,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'size': instance.size,
      'condition': instance.condition,
      'brand': instance.brand,
      'addedBy': instance.addedBy,
      'createdAt': instance.createdAt.toIso8601String(),
    };
