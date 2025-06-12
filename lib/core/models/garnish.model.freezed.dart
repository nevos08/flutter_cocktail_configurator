// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'garnish.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Garnish _$GarnishFromJson(Map<String, dynamic> json) {
  return _Garnish.fromJson(json);
}

/// @nodoc
mixin _$Garnish {
  int get id => throw _privateConstructorUsedError;
  int get garnishCategoryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get imgSrc => throw _privateConstructorUsedError;

  /// Serializes this Garnish to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Garnish
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GarnishCopyWith<Garnish> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GarnishCopyWith<$Res> {
  factory $GarnishCopyWith(Garnish value, $Res Function(Garnish) then) =
      _$GarnishCopyWithImpl<$Res, Garnish>;
  @useResult
  $Res call(
      {int id,
      int garnishCategoryId,
      String name,
      double price,
      String imgSrc});
}

/// @nodoc
class _$GarnishCopyWithImpl<$Res, $Val extends Garnish>
    implements $GarnishCopyWith<$Res> {
  _$GarnishCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Garnish
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? garnishCategoryId = null,
    Object? name = null,
    Object? price = null,
    Object? imgSrc = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      garnishCategoryId: null == garnishCategoryId
          ? _value.garnishCategoryId
          : garnishCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$GarnishImplCopyWith<$Res> implements $GarnishCopyWith<$Res> {
  factory _$$GarnishImplCopyWith(
          _$GarnishImpl value, $Res Function(_$GarnishImpl) then) =
      __$$GarnishImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int garnishCategoryId,
      String name,
      double price,
      String imgSrc});
}

/// @nodoc
class __$$GarnishImplCopyWithImpl<$Res>
    extends _$GarnishCopyWithImpl<$Res, _$GarnishImpl>
    implements _$$GarnishImplCopyWith<$Res> {
  __$$GarnishImplCopyWithImpl(
      _$GarnishImpl _value, $Res Function(_$GarnishImpl) _then)
      : super(_value, _then);

  /// Create a copy of Garnish
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? garnishCategoryId = null,
    Object? name = null,
    Object? price = null,
    Object? imgSrc = null,
  }) {
    return _then(_$GarnishImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      garnishCategoryId: null == garnishCategoryId
          ? _value.garnishCategoryId
          : garnishCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$GarnishImpl implements _Garnish {
  _$GarnishImpl(
      {required this.id,
      required this.garnishCategoryId,
      required this.name,
      required this.price,
      required this.imgSrc});

  factory _$GarnishImpl.fromJson(Map<String, dynamic> json) =>
      _$$GarnishImplFromJson(json);

  @override
  final int id;
  @override
  final int garnishCategoryId;
  @override
  final String name;
  @override
  final double price;
  @override
  final String imgSrc;

  @override
  String toString() {
    return 'Garnish(id: $id, garnishCategoryId: $garnishCategoryId, name: $name, price: $price, imgSrc: $imgSrc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GarnishImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.garnishCategoryId, garnishCategoryId) ||
                other.garnishCategoryId == garnishCategoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imgSrc, imgSrc) || other.imgSrc == imgSrc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, garnishCategoryId, name, price, imgSrc);

  /// Create a copy of Garnish
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GarnishImplCopyWith<_$GarnishImpl> get copyWith =>
      __$$GarnishImplCopyWithImpl<_$GarnishImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GarnishImplToJson(
      this,
    );
  }
}

abstract class _Garnish implements Garnish {
  factory _Garnish(
      {required final int id,
      required final int garnishCategoryId,
      required final String name,
      required final double price,
      required final String imgSrc}) = _$GarnishImpl;

  factory _Garnish.fromJson(Map<String, dynamic> json) = _$GarnishImpl.fromJson;

  @override
  int get id;
  @override
  int get garnishCategoryId;
  @override
  String get name;
  @override
  double get price;
  @override
  String get imgSrc;

  /// Create a copy of Garnish
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GarnishImplCopyWith<_$GarnishImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
