// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Base _$BaseFromJson(Map<String, dynamic> json) {
  return _Base.fromJson(json);
}

/// @nodoc
mixin _$Base {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get hasAlcohol => throw _privateConstructorUsedError;
  double get alcohol => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get imgSrc => throw _privateConstructorUsedError;

  /// Serializes this Base to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Base
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseCopyWith<Base> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseCopyWith<$Res> {
  factory $BaseCopyWith(Base value, $Res Function(Base) then) =
      _$BaseCopyWithImpl<$Res, Base>;
  @useResult
  $Res call(
      {int id,
      String name,
      bool hasAlcohol,
      double alcohol,
      double price,
      String imgSrc});
}

/// @nodoc
class _$BaseCopyWithImpl<$Res, $Val extends Base>
    implements $BaseCopyWith<$Res> {
  _$BaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Base
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? hasAlcohol = null,
    Object? alcohol = null,
    Object? price = null,
    Object? imgSrc = null,
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
      hasAlcohol: null == hasAlcohol
          ? _value.hasAlcohol
          : hasAlcohol // ignore: cast_nullable_to_non_nullable
              as bool,
      alcohol: null == alcohol
          ? _value.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imgSrc: null == imgSrc
          ? _value.imgSrc
          : imgSrc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseImplCopyWith<$Res> implements $BaseCopyWith<$Res> {
  factory _$$BaseImplCopyWith(
          _$BaseImpl value, $Res Function(_$BaseImpl) then) =
      __$$BaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      bool hasAlcohol,
      double alcohol,
      double price,
      String imgSrc});
}

/// @nodoc
class __$$BaseImplCopyWithImpl<$Res>
    extends _$BaseCopyWithImpl<$Res, _$BaseImpl>
    implements _$$BaseImplCopyWith<$Res> {
  __$$BaseImplCopyWithImpl(_$BaseImpl _value, $Res Function(_$BaseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Base
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? hasAlcohol = null,
    Object? alcohol = null,
    Object? price = null,
    Object? imgSrc = null,
  }) {
    return _then(_$BaseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasAlcohol: null == hasAlcohol
          ? _value.hasAlcohol
          : hasAlcohol // ignore: cast_nullable_to_non_nullable
              as bool,
      alcohol: null == alcohol
          ? _value.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imgSrc: null == imgSrc
          ? _value.imgSrc
          : imgSrc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseImpl implements _Base {
  _$BaseImpl(
      {required this.id,
      required this.name,
      required this.hasAlcohol,
      required this.alcohol,
      required this.price,
      required this.imgSrc});

  factory _$BaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final bool hasAlcohol;
  @override
  final double alcohol;
  @override
  final double price;
  @override
  final String imgSrc;

  @override
  String toString() {
    return 'Base(id: $id, name: $name, hasAlcohol: $hasAlcohol, alcohol: $alcohol, price: $price, imgSrc: $imgSrc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hasAlcohol, hasAlcohol) ||
                other.hasAlcohol == hasAlcohol) &&
            (identical(other.alcohol, alcohol) || other.alcohol == alcohol) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imgSrc, imgSrc) || other.imgSrc == imgSrc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, hasAlcohol, alcohol, price, imgSrc);

  /// Create a copy of Base
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseImplCopyWith<_$BaseImpl> get copyWith =>
      __$$BaseImplCopyWithImpl<_$BaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseImplToJson(
      this,
    );
  }
}

abstract class _Base implements Base {
  factory _Base(
      {required final int id,
      required final String name,
      required final bool hasAlcohol,
      required final double alcohol,
      required final double price,
      required final String imgSrc}) = _$BaseImpl;

  factory _Base.fromJson(Map<String, dynamic> json) = _$BaseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get hasAlcohol;
  @override
  double get alcohol;
  @override
  double get price;
  @override
  String get imgSrc;

  /// Create a copy of Base
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseImplCopyWith<_$BaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
