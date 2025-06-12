// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cocktails_overview_configuration.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CocktailsOverviewConfiguration _$CocktailsOverviewConfigurationFromJson(
    Map<String, dynamic> json) {
  return _CocktailsOverviewConfiguration.fromJson(json);
}

/// @nodoc
mixin _$CocktailsOverviewConfiguration {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Size get size => throw _privateConstructorUsedError;
  Set<Base> get bases => throw _privateConstructorUsedError;
  Set<Ingredient> get ingredients => throw _privateConstructorUsedError;
  Set<Garnish> get garnishes => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  /// Serializes this CocktailsOverviewConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CocktailsOverviewConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CocktailsOverviewConfigurationCopyWith<CocktailsOverviewConfiguration>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailsOverviewConfigurationCopyWith<$Res> {
  factory $CocktailsOverviewConfigurationCopyWith(
          CocktailsOverviewConfiguration value,
          $Res Function(CocktailsOverviewConfiguration) then) =
      _$CocktailsOverviewConfigurationCopyWithImpl<$Res,
          CocktailsOverviewConfiguration>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      Size size,
      Set<Base> bases,
      Set<Ingredient> ingredients,
      Set<Garnish> garnishes,
      bool isFavorite});

  $SizeCopyWith<$Res> get size;
}

/// @nodoc
class _$CocktailsOverviewConfigurationCopyWithImpl<$Res,
        $Val extends CocktailsOverviewConfiguration>
    implements $CocktailsOverviewConfigurationCopyWith<$Res> {
  _$CocktailsOverviewConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CocktailsOverviewConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? size = null,
    Object? bases = null,
    Object? ingredients = null,
    Object? garnishes = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
      bases: null == bases
          ? _value.bases
          : bases // ignore: cast_nullable_to_non_nullable
              as Set<Base>,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as Set<Ingredient>,
      garnishes: null == garnishes
          ? _value.garnishes
          : garnishes // ignore: cast_nullable_to_non_nullable
              as Set<Garnish>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of CocktailsOverviewConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SizeCopyWith<$Res> get size {
    return $SizeCopyWith<$Res>(_value.size, (value) {
      return _then(_value.copyWith(size: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CocktailsOverviewConfigurationImplCopyWith<$Res>
    implements $CocktailsOverviewConfigurationCopyWith<$Res> {
  factory _$$CocktailsOverviewConfigurationImplCopyWith(
          _$CocktailsOverviewConfigurationImpl value,
          $Res Function(_$CocktailsOverviewConfigurationImpl) then) =
      __$$CocktailsOverviewConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      Size size,
      Set<Base> bases,
      Set<Ingredient> ingredients,
      Set<Garnish> garnishes,
      bool isFavorite});

  @override
  $SizeCopyWith<$Res> get size;
}

/// @nodoc
class __$$CocktailsOverviewConfigurationImplCopyWithImpl<$Res>
    extends _$CocktailsOverviewConfigurationCopyWithImpl<$Res,
        _$CocktailsOverviewConfigurationImpl>
    implements _$$CocktailsOverviewConfigurationImplCopyWith<$Res> {
  __$$CocktailsOverviewConfigurationImplCopyWithImpl(
      _$CocktailsOverviewConfigurationImpl _value,
      $Res Function(_$CocktailsOverviewConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CocktailsOverviewConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? size = null,
    Object? bases = null,
    Object? ingredients = null,
    Object? garnishes = null,
    Object? isFavorite = null,
  }) {
    return _then(_$CocktailsOverviewConfigurationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
      bases: null == bases
          ? _value._bases
          : bases // ignore: cast_nullable_to_non_nullable
              as Set<Base>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as Set<Ingredient>,
      garnishes: null == garnishes
          ? _value._garnishes
          : garnishes // ignore: cast_nullable_to_non_nullable
              as Set<Garnish>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CocktailsOverviewConfigurationImpl
    implements _CocktailsOverviewConfiguration {
  _$CocktailsOverviewConfigurationImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.size,
      required final Set<Base> bases,
      required final Set<Ingredient> ingredients,
      required final Set<Garnish> garnishes,
      required this.isFavorite})
      : _bases = bases,
        _ingredients = ingredients,
        _garnishes = garnishes;

  factory _$CocktailsOverviewConfigurationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CocktailsOverviewConfigurationImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final Size size;
  final Set<Base> _bases;
  @override
  Set<Base> get bases {
    if (_bases is EqualUnmodifiableSetView) return _bases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_bases);
  }

  final Set<Ingredient> _ingredients;
  @override
  Set<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableSetView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_ingredients);
  }

  final Set<Garnish> _garnishes;
  @override
  Set<Garnish> get garnishes {
    if (_garnishes is EqualUnmodifiableSetView) return _garnishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_garnishes);
  }

  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'CocktailsOverviewConfiguration(id: $id, name: $name, description: $description, size: $size, bases: $bases, ingredients: $ingredients, garnishes: $garnishes, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CocktailsOverviewConfigurationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._bases, _bases) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._garnishes, _garnishes) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      size,
      const DeepCollectionEquality().hash(_bases),
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_garnishes),
      isFavorite);

  /// Create a copy of CocktailsOverviewConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CocktailsOverviewConfigurationImplCopyWith<
          _$CocktailsOverviewConfigurationImpl>
      get copyWith => __$$CocktailsOverviewConfigurationImplCopyWithImpl<
          _$CocktailsOverviewConfigurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CocktailsOverviewConfigurationImplToJson(
      this,
    );
  }
}

abstract class _CocktailsOverviewConfiguration
    implements CocktailsOverviewConfiguration {
  factory _CocktailsOverviewConfiguration(
      {required final String id,
      required final String name,
      required final String description,
      required final Size size,
      required final Set<Base> bases,
      required final Set<Ingredient> ingredients,
      required final Set<Garnish> garnishes,
      required final bool isFavorite}) = _$CocktailsOverviewConfigurationImpl;

  factory _CocktailsOverviewConfiguration.fromJson(Map<String, dynamic> json) =
      _$CocktailsOverviewConfigurationImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  Size get size;
  @override
  Set<Base> get bases;
  @override
  Set<Ingredient> get ingredients;
  @override
  Set<Garnish> get garnishes;
  @override
  bool get isFavorite;

  /// Create a copy of CocktailsOverviewConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CocktailsOverviewConfigurationImplCopyWith<
          _$CocktailsOverviewConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
