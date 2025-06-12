// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'garnish_category.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GarnishCategory _$GarnishCategoryFromJson(Map<String, dynamic> json) {
  return _GarnishCategory.fromJson(json);
}

/// @nodoc
mixin _$GarnishCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this GarnishCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GarnishCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GarnishCategoryCopyWith<GarnishCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GarnishCategoryCopyWith<$Res> {
  factory $GarnishCategoryCopyWith(
          GarnishCategory value, $Res Function(GarnishCategory) then) =
      _$GarnishCategoryCopyWithImpl<$Res, GarnishCategory>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GarnishCategoryCopyWithImpl<$Res, $Val extends GarnishCategory>
    implements $GarnishCategoryCopyWith<$Res> {
  _$GarnishCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GarnishCategory
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
abstract class _$$GarnishCategoryImplCopyWith<$Res>
    implements $GarnishCategoryCopyWith<$Res> {
  factory _$$GarnishCategoryImplCopyWith(_$GarnishCategoryImpl value,
          $Res Function(_$GarnishCategoryImpl) then) =
      __$$GarnishCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$GarnishCategoryImplCopyWithImpl<$Res>
    extends _$GarnishCategoryCopyWithImpl<$Res, _$GarnishCategoryImpl>
    implements _$$GarnishCategoryImplCopyWith<$Res> {
  __$$GarnishCategoryImplCopyWithImpl(
      _$GarnishCategoryImpl _value, $Res Function(_$GarnishCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GarnishCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GarnishCategoryImpl(
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
class _$GarnishCategoryImpl implements _GarnishCategory {
  _$GarnishCategoryImpl({required this.id, required this.name});

  factory _$GarnishCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GarnishCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GarnishCategory(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GarnishCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of GarnishCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GarnishCategoryImplCopyWith<_$GarnishCategoryImpl> get copyWith =>
      __$$GarnishCategoryImplCopyWithImpl<_$GarnishCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GarnishCategoryImplToJson(
      this,
    );
  }
}

abstract class _GarnishCategory implements GarnishCategory {
  factory _GarnishCategory(
      {required final int id,
      required final String name}) = _$GarnishCategoryImpl;

  factory _GarnishCategory.fromJson(Map<String, dynamic> json) =
      _$GarnishCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of GarnishCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GarnishCategoryImplCopyWith<_$GarnishCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
