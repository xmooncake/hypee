import 'package:freezed_annotation/freezed_annotation.dart';

part 'clothing_brand.freezed.dart';
part 'clothing_brand.g.dart';

@freezed
class ClothingBrand with _$ClothingBrand {
  factory ClothingBrand({
    required int id,
    String? imageUrl,
    required String name,
    required String description,
  }) = _ClothingBrand;

  factory ClothingBrand.fromJson(Map<String, dynamic> json) =>
      _$ClothingBrandFromJson(json);
}
