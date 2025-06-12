// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_category.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IngredientCategory _$IngredientCategoryFromJson(Map<String, dynamic> json) {
  return _IngredientCategory.fromJson(json);
}

/// @nodoc
mixin _$IngredientCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this IngredientCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IngredientCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IngredientCategoryCopyWith<IngredientCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCategoryCopyWith<$Res> {
  factory $IngredientCategoryCopyWith(
          IngredientCategory value, $Res Function(IngredientCategory) then) =
      _$IngredientCategoryCopyWithImpl<$Res, IngredientCategory>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$IngredientCategoryCopyWithImpl<$Res, $Val extends IngredientCategory>
    implements $IngredientCategoryCopyWith<$Res> {
  _$IngredientCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IngredientCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientCategoryImplCopyWith<$Res>
    implements $IngredientCategoryCopyWith<$Res> {
  factory _$$IngredientCategoryImplCopyWith(_$IngredientCategoryImpl value,
          $Res Function(_$IngredientCategoryImpl) then) =
      __$$IngredientCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$IngredientCategoryImplCopyWithImpl<$Res>
    extends _$IngredientCategoryCopyWithImpl<$Res, _$IngredientCategoryImpl>
    implements _$$IngredientCategoryImplCopyWith<$Res> {
  __$$IngredientCategoryImplCopyWithImpl(_$IngredientCategoryImpl _value,
      $Res Function(_$IngredientCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$IngredientCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientCategoryImpl implements _IngredientCategory {
  _$IngredientCategoryImpl({required this.id, required this.name});

  factory _$IngredientCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'IngredientCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of IngredientCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientCategoryImplCopyWith<_$IngredientCategoryImpl> get copyWith =>
      __$$IngredientCategoryImplCopyWithImpl<_$IngredientCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientCategoryImplToJson(
      this,
    );
  }
}

abstract class _IngredientCategory implements IngredientCategory {
  factory _IngredientCategory(
      {required final int id,
      required final String name}) = _$IngredientCategoryImpl;

  factory _IngredientCategory.fromJson(Map<String, dynamic> json) =
      _$IngredientCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of IngredientCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IngredientCategoryImplCopyWith<_$IngredientCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
