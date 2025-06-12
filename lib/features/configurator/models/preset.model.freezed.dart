// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preset.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfigurationField _$ConfigurationFieldFromJson(Map<String, dynamic> json) {
  return _ConfigurationField.fromJson(json);
}

/// @nodoc
mixin _$ConfigurationField {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this ConfigurationField to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfigurationField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfigurationFieldCopyWith<ConfigurationField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigurationFieldCopyWith<$Res> {
  factory $ConfigurationFieldCopyWith(
          ConfigurationField value, $Res Function(ConfigurationField) then) =
      _$ConfigurationFieldCopyWithImpl<$Res, ConfigurationField>;
  @useResult
  $Res call({String id, String name, String description});
}

/// @nodoc
class _$ConfigurationFieldCopyWithImpl<$Res, $Val extends ConfigurationField>
    implements $ConfigurationFieldCopyWith<$Res> {
  _$ConfigurationFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfigurationField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfigurationFieldImplCopyWith<$Res>
    implements $ConfigurationFieldCopyWith<$Res> {
  factory _$$ConfigurationFieldImplCopyWith(_$ConfigurationFieldImpl value,
          $Res Function(_$ConfigurationFieldImpl) then) =
      __$$ConfigurationFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String description});
}

/// @nodoc
class __$$ConfigurationFieldImplCopyWithImpl<$Res>
    extends _$ConfigurationFieldCopyWithImpl<$Res, _$ConfigurationFieldImpl>
    implements _$$ConfigurationFieldImplCopyWith<$Res> {
  __$$ConfigurationFieldImplCopyWithImpl(_$ConfigurationFieldImpl _value,
      $Res Function(_$ConfigurationFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfigurationField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$ConfigurationFieldImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigurationFieldImpl implements _ConfigurationField {
  _$ConfigurationFieldImpl(
      {required this.id, required this.name, required this.description});

  factory _$ConfigurationFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigurationFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'ConfigurationField(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigurationFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  /// Create a copy of ConfigurationField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigurationFieldImplCopyWith<_$ConfigurationFieldImpl> get copyWith =>
      __$$ConfigurationFieldImplCopyWithImpl<_$ConfigurationFieldImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigurationFieldImplToJson(
      this,
    );
  }
}

abstract class _ConfigurationField implements ConfigurationField {
  factory _ConfigurationField(
      {required final String id,
      required final String name,
      required final String description}) = _$ConfigurationFieldImpl;

  factory _ConfigurationField.fromJson(Map<String, dynamic> json) =
      _$ConfigurationFieldImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;

  /// Create a copy of ConfigurationField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfigurationFieldImplCopyWith<_$ConfigurationFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CocktailField _$CocktailFieldFromJson(Map<String, dynamic> json) {
  return _CocktailField.fromJson(json);
}

/// @nodoc
mixin _$CocktailField {
  String get id => throw _privateConstructorUsedError;
  Size get size => throw _privateConstructorUsedError;
  List<Base> get bases => throw _privateConstructorUsedError;
  List<Ingredient> get ingredients => throw _privateConstructorUsedError;
  List<Garnish> get garnishes => throw _privateConstructorUsedError;

  /// Serializes this CocktailField to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CocktailField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CocktailFieldCopyWith<CocktailField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailFieldCopyWith<$Res> {
  factory $CocktailFieldCopyWith(
          CocktailField value, $Res Function(CocktailField) then) =
      _$CocktailFieldCopyWithImpl<$Res, CocktailField>;
  @useResult
  $Res call(
      {String id,
      Size size,
      List<Base> bases,
      List<Ingredient> ingredients,
      List<Garnish> garnishes});

  $SizeCopyWith<$Res> get size;
}

/// @nodoc
class _$CocktailFieldCopyWithImpl<$Res, $Val extends CocktailField>
    implements $CocktailFieldCopyWith<$Res> {
  _$CocktailFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CocktailField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? bases = null,
    Object? ingredients = null,
    Object? garnishes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
      bases: null == bases
          ? _value.bases
          : bases // ignore: cast_nullable_to_non_nullable
              as List<Base>,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      garnishes: null == garnishes
          ? _value.garnishes
          : garnishes // ignore: cast_nullable_to_non_nullable
              as List<Garnish>,
    ) as $Val);
  }

  /// Create a copy of CocktailField
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
abstract class _$$CocktailFieldImplCopyWith<$Res>
    implements $CocktailFieldCopyWith<$Res> {
  factory _$$CocktailFieldImplCopyWith(
          _$CocktailFieldImpl value, $Res Function(_$CocktailFieldImpl) then) =
      __$$CocktailFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Size size,
      List<Base> bases,
      List<Ingredient> ingredients,
      List<Garnish> garnishes});

  @override
  $SizeCopyWith<$Res> get size;
}

/// @nodoc
class __$$CocktailFieldImplCopyWithImpl<$Res>
    extends _$CocktailFieldCopyWithImpl<$Res, _$CocktailFieldImpl>
    implements _$$CocktailFieldImplCopyWith<$Res> {
  __$$CocktailFieldImplCopyWithImpl(
      _$CocktailFieldImpl _value, $Res Function(_$CocktailFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of CocktailField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? bases = null,
    Object? ingredients = null,
    Object? garnishes = null,
  }) {
    return _then(_$CocktailFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as Size,
      bases: null == bases
          ? _value._bases
          : bases // ignore: cast_nullable_to_non_nullable
              as List<Base>,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      garnishes: null == garnishes
          ? _value._garnishes
          : garnishes // ignore: cast_nullable_to_non_nullable
              as List<Garnish>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CocktailFieldImpl implements _CocktailField {
  _$CocktailFieldImpl(
      {required this.id,
      required this.size,
      required final List<Base> bases,
      required final List<Ingredient> ingredients,
      required final List<Garnish> garnishes})
      : _bases = bases,
        _ingredients = ingredients,
        _garnishes = garnishes;

  factory _$CocktailFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$CocktailFieldImplFromJson(json);

  @override
  final String id;
  @override
  final Size size;
  final List<Base> _bases;
  @override
  List<Base> get bases {
    if (_bases is EqualUnmodifiableListView) return _bases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bases);
  }

  final List<Ingredient> _ingredients;
  @override
  List<Ingredient> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<Garnish> _garnishes;
  @override
  List<Garnish> get garnishes {
    if (_garnishes is EqualUnmodifiableListView) return _garnishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_garnishes);
  }

  @override
  String toString() {
    return 'CocktailField(id: $id, size: $size, bases: $bases, ingredients: $ingredients, garnishes: $garnishes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CocktailFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
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
      id,
      size,
      const DeepCollectionEquality().hash(_bases),
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_garnishes));

  /// Create a copy of CocktailField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CocktailFieldImplCopyWith<_$CocktailFieldImpl> get copyWith =>
      __$$CocktailFieldImplCopyWithImpl<_$CocktailFieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CocktailFieldImplToJson(
      this,
    );
  }
}

abstract class _CocktailField implements CocktailField {
  factory _CocktailField(
      {required final String id,
      required final Size size,
      required final List<Base> bases,
      required final List<Ingredient> ingredients,
      required final List<Garnish> garnishes}) = _$CocktailFieldImpl;

  factory _CocktailField.fromJson(Map<String, dynamic> json) =
      _$CocktailFieldImpl.fromJson;

  @override
  String get id;
  @override
  Size get size;
  @override
  List<Base> get bases;
  @override
  List<Ingredient> get ingredients;
  @override
  List<Garnish> get garnishes;

  /// Create a copy of CocktailField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CocktailFieldImplCopyWith<_$CocktailFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Preset _$PresetFromJson(Map<String, dynamic> json) {
  return _Preset.fromJson(json);
}

/// @nodoc
mixin _$Preset {
  String get id => throw _privateConstructorUsedError;
  bool get show => throw _privateConstructorUsedError;
  String get imgSrc => throw _privateConstructorUsedError;
  ConfigurationField get configuration => throw _privateConstructorUsedError;
  CocktailField get cocktail => throw _privateConstructorUsedError;

  /// Serializes this Preset to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Preset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PresetCopyWith<Preset> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresetCopyWith<$Res> {
  factory $PresetCopyWith(Preset value, $Res Function(Preset) then) =
      _$PresetCopyWithImpl<$Res, Preset>;
  @useResult
  $Res call(
      {String id,
      bool show,
      String imgSrc,
      ConfigurationField configuration,
      CocktailField cocktail});

  $ConfigurationFieldCopyWith<$Res> get configuration;
  $CocktailFieldCopyWith<$Res> get cocktail;
}

/// @nodoc
class _$PresetCopyWithImpl<$Res, $Val extends Preset>
    implements $PresetCopyWith<$Res> {
  _$PresetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Preset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? show = null,
    Object? imgSrc = null,
    Object? configuration = null,
    Object? cocktail = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
      imgSrc: null == imgSrc
          ? _value.imgSrc
          : imgSrc // ignore: cast_nullable_to_non_nullable
              as String,
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as ConfigurationField,
      cocktail: null == cocktail
          ? _value.cocktail
          : cocktail // ignore: cast_nullable_to_non_nullable
              as CocktailField,
    ) as $Val);
  }

  /// Create a copy of Preset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConfigurationFieldCopyWith<$Res> get configuration {
    return $ConfigurationFieldCopyWith<$Res>(_value.configuration, (value) {
      return _then(_value.copyWith(configuration: value) as $Val);
    });
  }

  /// Create a copy of Preset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CocktailFieldCopyWith<$Res> get cocktail {
    return $CocktailFieldCopyWith<$Res>(_value.cocktail, (value) {
      return _then(_value.copyWith(cocktail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PresetImplCopyWith<$Res> implements $PresetCopyWith<$Res> {
  factory _$$PresetImplCopyWith(
          _$PresetImpl value, $Res Function(_$PresetImpl) then) =
      __$$PresetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool show,
      String imgSrc,
      ConfigurationField configuration,
      CocktailField cocktail});

  @override
  $ConfigurationFieldCopyWith<$Res> get configuration;
  @override
  $CocktailFieldCopyWith<$Res> get cocktail;
}

/// @nodoc
class __$$PresetImplCopyWithImpl<$Res>
    extends _$PresetCopyWithImpl<$Res, _$PresetImpl>
    implements _$$PresetImplCopyWith<$Res> {
  __$$PresetImplCopyWithImpl(
      _$PresetImpl _value, $Res Function(_$PresetImpl) _then)
      : super(_value, _then);

  /// Create a copy of Preset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? show = null,
    Object? imgSrc = null,
    Object? configuration = null,
    Object? cocktail = null,
  }) {
    return _then(_$PresetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
      imgSrc: null == imgSrc
          ? _value.imgSrc
          : imgSrc // ignore: cast_nullable_to_non_nullable
              as String,
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as ConfigurationField,
      cocktail: null == cocktail
          ? _value.cocktail
          : cocktail // ignore: cast_nullable_to_non_nullable
              as CocktailField,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PresetImpl implements _Preset {
  _$PresetImpl(
      {required this.id,
      required this.show,
      required this.imgSrc,
      required this.configuration,
      required this.cocktail});

  factory _$PresetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PresetImplFromJson(json);

  @override
  final String id;
  @override
  final bool show;
  @override
  final String imgSrc;
  @override
  final ConfigurationField configuration;
  @override
  final CocktailField cocktail;

  @override
  String toString() {
    return 'Preset(id: $id, show: $show, imgSrc: $imgSrc, configuration: $configuration, cocktail: $cocktail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.show, show) || other.show == show) &&
            (identical(other.imgSrc, imgSrc) || other.imgSrc == imgSrc) &&
            (identical(other.configuration, configuration) ||
                other.configuration == configuration) &&
            (identical(other.cocktail, cocktail) ||
                other.cocktail == cocktail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, show, imgSrc, configuration, cocktail);

  /// Create a copy of Preset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PresetImplCopyWith<_$PresetImpl> get copyWith =>
      __$$PresetImplCopyWithImpl<_$PresetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PresetImplToJson(
      this,
    );
  }
}

abstract class _Preset implements Preset {
  factory _Preset(
      {required final String id,
      required final bool show,
      required final String imgSrc,
      required final ConfigurationField configuration,
      required final CocktailField cocktail}) = _$PresetImpl;

  factory _Preset.fromJson(Map<String, dynamic> json) = _$PresetImpl.fromJson;

  @override
  String get id;
  @override
  bool get show;
  @override
  String get imgSrc;
  @override
  ConfigurationField get configuration;
  @override
  CocktailField get cocktail;

  /// Create a copy of Preset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PresetImplCopyWith<_$PresetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
