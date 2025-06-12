// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'configuration.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) {
  return _Configuration.fromJson(json);
}

/// @nodoc
mixin _$Configuration {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Size get size => throw _privateConstructorUsedError;
  Set<Base> get bases => throw _privateConstructorUsedError;
  Set<Ingredient> get ingredients => throw _privateConstructorUsedError;
  Set<Garnish> get garnishes => throw _privateConstructorUsedError;

  /// Serializes this Configuration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Configuration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfigurationCopyWith<Configuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigurationCopyWith<$Res> {
  factory $ConfigurationCopyWith(
          Configuration value, $Res Function(Configuration) then) =
      _$ConfigurationCopyWithImpl<$Res, Configuration>;
  @useResult
  $Res call(
      {String name,
      String description,
      Size size,
      Set<Base> bases,
      Set<Ingredient> ingredients,
      Set<Garnish> garnishes});

  $SizeCopyWith<$Res> get size;
}

/// @nodoc
class _$ConfigurationCopyWithImpl<$Res, $Val extends Configuration>
    implements $ConfigurationCopyWith<$Res> {
  _$ConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Configuration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? size = null,
    Object? bases = null,
    Object? ingredients = null,
    Object? garnishes = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }

  /// Create a copy of Configuration
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
abstract class _$$ConfigurationImplCopyWith<$Res>
    implements $ConfigurationCopyWith<$Res> {
  factory _$$ConfigurationImplCopyWith(
          _$ConfigurationImpl value, $Res Function(_$ConfigurationImpl) then) =
      __$$ConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      Size size,
      Set<Base> bases,
      Set<Ingredient> ingredients,
      Set<Garnish> garnishes});

  @override
  $SizeCopyWith<$Res> get size;
}

/// @nodoc
class __$$ConfigurationImplCopyWithImpl<$Res>
    extends _$ConfigurationCopyWithImpl<$Res, _$ConfigurationImpl>
    implements _$$ConfigurationImplCopyWith<$Res> {
  __$$ConfigurationImplCopyWithImpl(
      _$ConfigurationImpl _value, $Res Function(_$ConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Configuration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? size = null,
    Object? bases = null,
    Object? ingredients = null,
    Object? garnishes = null,
  }) {
    return _then(_$ConfigurationImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigurationImpl implements _Configuration {
  _$ConfigurationImpl(
      {required this.name,
      required this.description,
      required this.size,
      required final Set<Base> bases,
      required final Set<Ingredient> ingredients,
      required final Set<Garnish> garnishes})
      : _bases = bases,
        _ingredients = ingredients,
        _garnishes = garnishes;

  factory _$ConfigurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigurationImplFromJson(json);

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
  String toString() {
    return 'Configuration(name: $name, description: $description, size: $size, bases: $bases, ingredients: $ingredients, garnishes: $garnishes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigurationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._bases, _bases) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._garnishes, _garnishes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      size,
      const DeepCollectionEquality().hash(_bases),
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_garnishes));

  /// Create a copy of Configuration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigurationImplCopyWith<_$ConfigurationImpl> get copyWith =>
      __$$ConfigurationImplCopyWithImpl<_$ConfigurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigurationImplToJson(
      this,
    );
  }
}

abstract class _Configuration implements Configuration {
  factory _Configuration(
      {required final String name,
      required final String description,
      required final Size size,
      required final Set<Base> bases,
      required final Set<Ingredient> ingredients,
      required final Set<Garnish> garnishes}) = _$ConfigurationImpl;

  factory _Configuration.fromJson(Map<String, dynamic> json) =
      _$ConfigurationImpl.fromJson;

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

  /// Create a copy of Configuration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfigurationImplCopyWith<_$ConfigurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubmittedConfiguration _$SubmittedConfigurationFromJson(
    Map<String, dynamic> json) {
  return _SubmittedConfiguration.fromJson(json);
}

/// @nodoc
mixin _$SubmittedConfiguration {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get sizeId => throw _privateConstructorUsedError;
  List<int> get bases => throw _privateConstructorUsedError;
  List<int> get ingredients => throw _privateConstructorUsedError;
  List<int> get garnishes => throw _privateConstructorUsedError;

  /// Serializes this SubmittedConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubmittedConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmittedConfigurationCopyWith<SubmittedConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmittedConfigurationCopyWith<$Res> {
  factory $SubmittedConfigurationCopyWith(SubmittedConfiguration value,
          $Res Function(SubmittedConfiguration) then) =
      _$SubmittedConfigurationCopyWithImpl<$Res, SubmittedConfiguration>;
  @useResult
  $Res call(
      {String name,
      String description,
      int sizeId,
      List<int> bases,
      List<int> ingredients,
      List<int> garnishes});
}

/// @nodoc
class _$SubmittedConfigurationCopyWithImpl<$Res,
        $Val extends SubmittedConfiguration>
    implements $SubmittedConfigurationCopyWith<$Res> {
  _$SubmittedConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmittedConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? sizeId = null,
    Object? bases = null,
    Object? ingredients = null,
    Object? garnishes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sizeId: null == sizeId
          ? _value.sizeId
          : sizeId // ignore: cast_nullable_to_non_nullable
              as int,
      bases: null == bases
          ? _value.bases
          : bases // ignore: cast_nullable_to_non_nullable
              as List<int>,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<int>,
      garnishes: null == garnishes
          ? _value.garnishes
          : garnishes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmittedConfigurationImplCopyWith<$Res>
    implements $SubmittedConfigurationCopyWith<$Res> {
  factory _$$SubmittedConfigurationImplCopyWith(
          _$SubmittedConfigurationImpl value,
          $Res Function(_$SubmittedConfigurationImpl) then) =
      __$$SubmittedConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      int sizeId,
      List<int> bases,
      List<int> ingredients,
      List<int> garnishes});
}

/// @nodoc
class __$$SubmittedConfigurationImplCopyWithImpl<$Res>
    extends _$SubmittedConfigurationCopyWithImpl<$Res,
        _$SubmittedConfigurationImpl>
    implements _$$SubmittedConfigurationImplCopyWith<$Res> {
  __$$SubmittedConfigurationImplCopyWithImpl(
      _$SubmittedConfigurationImpl _value,
      $Res Function(_$SubmittedConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmittedConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? sizeId = null,
    Object? bases = null,
    Object? ingredients = null,
    Object? garnishes = null,
  }) {
    return _then(_$SubmittedConfigurationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sizeId: null == sizeId
          ? _value.sizeId
          : sizeId // ignore: cast_nullable_to_non_nullable
              as int,
      bases: null == bases
          ? _value._bases
          : bases // ignore: cast_nullable_to_non_nullable
              as List<int>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<int>,
      garnishes: null == garnishes
          ? _value._garnishes
          : garnishes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmittedConfigurationImpl implements _SubmittedConfiguration {
  _$SubmittedConfigurationImpl(
      {required this.name,
      required this.description,
      required this.sizeId,
      required final List<int> bases,
      required final List<int> ingredients,
      required final List<int> garnishes})
      : _bases = bases,
        _ingredients = ingredients,
        _garnishes = garnishes;

  factory _$SubmittedConfigurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmittedConfigurationImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final int sizeId;
  final List<int> _bases;
  @override
  List<int> get bases {
    if (_bases is EqualUnmodifiableListView) return _bases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bases);
  }

  final List<int> _ingredients;
  @override
  List<int> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<int> _garnishes;
  @override
  List<int> get garnishes {
    if (_garnishes is EqualUnmodifiableListView) return _garnishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_garnishes);
  }

  @override
  String toString() {
    return 'SubmittedConfiguration(name: $name, description: $description, sizeId: $sizeId, bases: $bases, ingredients: $ingredients, garnishes: $garnishes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmittedConfigurationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sizeId, sizeId) || other.sizeId == sizeId) &&
            const DeepCollectionEquality().equals(other._bases, _bases) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._garnishes, _garnishes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      sizeId,
      const DeepCollectionEquality().hash(_bases),
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_garnishes));

  /// Create a copy of SubmittedConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmittedConfigurationImplCopyWith<_$SubmittedConfigurationImpl>
      get copyWith => __$$SubmittedConfigurationImplCopyWithImpl<
          _$SubmittedConfigurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmittedConfigurationImplToJson(
      this,
    );
  }
}

abstract class _SubmittedConfiguration implements SubmittedConfiguration {
  factory _SubmittedConfiguration(
      {required final String name,
      required final String description,
      required final int sizeId,
      required final List<int> bases,
      required final List<int> ingredients,
      required final List<int> garnishes}) = _$SubmittedConfigurationImpl;

  factory _SubmittedConfiguration.fromJson(Map<String, dynamic> json) =
      _$SubmittedConfigurationImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  int get sizeId;
  @override
  List<int> get bases;
  @override
  List<int> get ingredients;
  @override
  List<int> get garnishes;

  /// Create a copy of SubmittedConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmittedConfigurationImplCopyWith<_$SubmittedConfigurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CartConfiguration _$CartConfigurationFromJson(Map<String, dynamic> json) {
  return _CartConfiguration.fromJson(json);
}

/// @nodoc
mixin _$CartConfiguration {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Size get size => throw _privateConstructorUsedError;
  Set<Base> get bases => throw _privateConstructorUsedError;
  Set<Ingredient> get ingredients => throw _privateConstructorUsedError;
  Set<Garnish> get garnishes => throw _privateConstructorUsedError;

  /// Serializes this CartConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartConfigurationCopyWith<CartConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartConfigurationCopyWith<$Res> {
  factory $CartConfigurationCopyWith(
          CartConfiguration value, $Res Function(CartConfiguration) then) =
      _$CartConfigurationCopyWithImpl<$Res, CartConfiguration>;
  @useResult
  $Res call(
      {String name,
      String description,
      Size size,
      Set<Base> bases,
      Set<Ingredient> ingredients,
      Set<Garnish> garnishes});

  $SizeCopyWith<$Res> get size;
}

/// @nodoc
class _$CartConfigurationCopyWithImpl<$Res, $Val extends CartConfiguration>
    implements $CartConfigurationCopyWith<$Res> {
  _$CartConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? size = null,
    Object? bases = null,
    Object? ingredients = null,
    Object? garnishes = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }

  /// Create a copy of CartConfiguration
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
abstract class _$$CartConfigurationImplCopyWith<$Res>
    implements $CartConfigurationCopyWith<$Res> {
  factory _$$CartConfigurationImplCopyWith(_$CartConfigurationImpl value,
          $Res Function(_$CartConfigurationImpl) then) =
      __$$CartConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      Size size,
      Set<Base> bases,
      Set<Ingredient> ingredients,
      Set<Garnish> garnishes});

  @override
  $SizeCopyWith<$Res> get size;
}

/// @nodoc
class __$$CartConfigurationImplCopyWithImpl<$Res>
    extends _$CartConfigurationCopyWithImpl<$Res, _$CartConfigurationImpl>
    implements _$$CartConfigurationImplCopyWith<$Res> {
  __$$CartConfigurationImplCopyWithImpl(_$CartConfigurationImpl _value,
      $Res Function(_$CartConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? size = null,
    Object? bases = null,
    Object? ingredients = null,
    Object? garnishes = null,
  }) {
    return _then(_$CartConfigurationImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartConfigurationImpl implements _CartConfiguration {
  _$CartConfigurationImpl(
      {required this.name,
      required this.description,
      required this.size,
      required final Set<Base> bases,
      required final Set<Ingredient> ingredients,
      required final Set<Garnish> garnishes})
      : _bases = bases,
        _ingredients = ingredients,
        _garnishes = garnishes;

  factory _$CartConfigurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartConfigurationImplFromJson(json);

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
  String toString() {
    return 'CartConfiguration(name: $name, description: $description, size: $size, bases: $bases, ingredients: $ingredients, garnishes: $garnishes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartConfigurationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._bases, _bases) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._garnishes, _garnishes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      size,
      const DeepCollectionEquality().hash(_bases),
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_garnishes));

  /// Create a copy of CartConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartConfigurationImplCopyWith<_$CartConfigurationImpl> get copyWith =>
      __$$CartConfigurationImplCopyWithImpl<_$CartConfigurationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartConfigurationImplToJson(
      this,
    );
  }
}

abstract class _CartConfiguration implements CartConfiguration {
  factory _CartConfiguration(
      {required final String name,
      required final String description,
      required final Size size,
      required final Set<Base> bases,
      required final Set<Ingredient> ingredients,
      required final Set<Garnish> garnishes}) = _$CartConfigurationImpl;

  factory _CartConfiguration.fromJson(Map<String, dynamic> json) =
      _$CartConfigurationImpl.fromJson;

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

  /// Create a copy of CartConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartConfigurationImplCopyWith<_$CartConfigurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
