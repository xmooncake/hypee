// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clothing_brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClothingBrand _$ClothingBrandFromJson(Map<String, dynamic> json) {
  return _ClothingBrand.fromJson(json);
}

/// @nodoc
mixin _$ClothingBrand {
  int get id => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClothingBrandCopyWith<ClothingBrand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClothingBrandCopyWith<$Res> {
  factory $ClothingBrandCopyWith(
          ClothingBrand value, $Res Function(ClothingBrand) then) =
      _$ClothingBrandCopyWithImpl<$Res, ClothingBrand>;
  @useResult
  $Res call({int id, String? imageUrl, String name, String description});
}

/// @nodoc
class _$ClothingBrandCopyWithImpl<$Res, $Val extends ClothingBrand>
    implements $ClothingBrandCopyWith<$Res> {
  _$ClothingBrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = freezed,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClothingBrandImplCopyWith<$Res>
    implements $ClothingBrandCopyWith<$Res> {
  factory _$$ClothingBrandImplCopyWith(
          _$ClothingBrandImpl value, $Res Function(_$ClothingBrandImpl) then) =
      __$$ClothingBrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? imageUrl, String name, String description});
}

/// @nodoc
class __$$ClothingBrandImplCopyWithImpl<$Res>
    extends _$ClothingBrandCopyWithImpl<$Res, _$ClothingBrandImpl>
    implements _$$ClothingBrandImplCopyWith<$Res> {
  __$$ClothingBrandImplCopyWithImpl(
      _$ClothingBrandImpl _value, $Res Function(_$ClothingBrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = freezed,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$ClothingBrandImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClothingBrandImpl implements _ClothingBrand {
  _$ClothingBrandImpl(
      {required this.id,
      this.imageUrl,
      required this.name,
      required this.description});

  factory _$ClothingBrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClothingBrandImplFromJson(json);

  @override
  final int id;
  @override
  final String? imageUrl;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'ClothingBrand(id: $id, imageUrl: $imageUrl, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClothingBrandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClothingBrandImplCopyWith<_$ClothingBrandImpl> get copyWith =>
      __$$ClothingBrandImplCopyWithImpl<_$ClothingBrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClothingBrandImplToJson(
      this,
    );
  }
}

abstract class _ClothingBrand implements ClothingBrand {
  factory _ClothingBrand(
      {required final int id,
      final String? imageUrl,
      required final String name,
      required final String description}) = _$ClothingBrandImpl;

  factory _ClothingBrand.fromJson(Map<String, dynamic> json) =
      _$ClothingBrandImpl.fromJson;

  @override
  int get id;
  @override
  String? get imageUrl;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$ClothingBrandImplCopyWith<_$ClothingBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
