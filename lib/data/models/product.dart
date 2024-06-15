import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hypee/data/models/clothing_brand.dart';
import 'package:hypee/data/models/condition.dart';
import 'package:hypee/data/models/user.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required List<String> imageUrls,
    required String name,
    required String description,
    required double price,
    required String size,
    required Condition condition,
    required ClothingBrand brand,
    required User addedBy,
    required DateTime createdAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
