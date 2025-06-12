// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get orderDate => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double? get priceDiscounted => throw _privateConstructorUsedError;
  String? get discountcode => throw _privateConstructorUsedError;
  List<OrderPosition> get positions => throw _privateConstructorUsedError;

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String id,
      String userId,
      DateTime orderDate,
      double price,
      double? priceDiscounted,
      String? discountcode,
      List<OrderPosition> positions});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? orderDate = null,
    Object? price = null,
    Object? priceDiscounted = freezed,
    Object? discountcode = freezed,
    Object? positions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceDiscounted: freezed == priceDiscounted
          ? _value.priceDiscounted
          : priceDiscounted // ignore: cast_nullable_to_non_nullable
              as double?,
      discountcode: freezed == discountcode
          ? _value.discountcode
          : discountcode // ignore: cast_nullable_to_non_nullable
              as String?,
      positions: null == positions
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<OrderPosition>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      DateTime orderDate,
      double price,
      double? priceDiscounted,
      String? discountcode,
      List<OrderPosition> positions});
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? orderDate = null,
    Object? price = null,
    Object? priceDiscounted = freezed,
    Object? discountcode = freezed,
    Object? positions = null,
  }) {
    return _then(_$OrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceDiscounted: freezed == priceDiscounted
          ? _value.priceDiscounted
          : priceDiscounted // ignore: cast_nullable_to_non_nullable
              as double?,
      discountcode: freezed == discountcode
          ? _value.discountcode
          : discountcode // ignore: cast_nullable_to_non_nullable
              as String?,
      positions: null == positions
          ? _value._positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<OrderPosition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  _$OrderImpl(
      {required this.id,
      required this.userId,
      required this.orderDate,
      required this.price,
      required this.priceDiscounted,
      required this.discountcode,
      required final List<OrderPosition> positions})
      : _positions = positions;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final DateTime orderDate;
  @override
  final double price;
  @override
  final double? priceDiscounted;
  @override
  final String? discountcode;
  final List<OrderPosition> _positions;
  @override
  List<OrderPosition> get positions {
    if (_positions is EqualUnmodifiableListView) return _positions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_positions);
  }

  @override
  String toString() {
    return 'Order(id: $id, userId: $userId, orderDate: $orderDate, price: $price, priceDiscounted: $priceDiscounted, discountcode: $discountcode, positions: $positions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceDiscounted, priceDiscounted) ||
                other.priceDiscounted == priceDiscounted) &&
            (identical(other.discountcode, discountcode) ||
                other.discountcode == discountcode) &&
            const DeepCollectionEquality()
                .equals(other._positions, _positions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      orderDate,
      price,
      priceDiscounted,
      discountcode,
      const DeepCollectionEquality().hash(_positions));

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order(
      {required final String id,
      required final String userId,
      required final DateTime orderDate,
      required final double price,
      required final double? priceDiscounted,
      required final String? discountcode,
      required final List<OrderPosition> positions}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  DateTime get orderDate;
  @override
  double get price;
  @override
  double? get priceDiscounted;
  @override
  String? get discountcode;
  @override
  List<OrderPosition> get positions;

  /// Create a copy of Order
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderPosition _$OrderPositionFromJson(Map<String, dynamic> json) {
  return _OrderPosition.fromJson(json);
}

/// @nodoc
mixin _$OrderPosition {
  int get index => throw _privateConstructorUsedError;
  String get configName => throw _privateConstructorUsedError;
  String get configId => throw _privateConstructorUsedError;
  String get cocktailId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  /// Serializes this OrderPosition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderPositionCopyWith<OrderPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPositionCopyWith<$Res> {
  factory $OrderPositionCopyWith(
          OrderPosition value, $Res Function(OrderPosition) then) =
      _$OrderPositionCopyWithImpl<$Res, OrderPosition>;
  @useResult
  $Res call(
      {int index,
      String configName,
      String configId,
      String cocktailId,
      double price});
}

/// @nodoc
class _$OrderPositionCopyWithImpl<$Res, $Val extends OrderPosition>
    implements $OrderPositionCopyWith<$Res> {
  _$OrderPositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? configName = null,
    Object? configId = null,
    Object? cocktailId = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      configName: null == configName
          ? _value.configName
          : configName // ignore: cast_nullable_to_non_nullable
              as String,
      configId: null == configId
          ? _value.configId
          : configId // ignore: cast_nullable_to_non_nullable
              as String,
      cocktailId: null == cocktailId
          ? _value.cocktailId
          : cocktailId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderPositionImplCopyWith<$Res>
    implements $OrderPositionCopyWith<$Res> {
  factory _$$OrderPositionImplCopyWith(
          _$OrderPositionImpl value, $Res Function(_$OrderPositionImpl) then) =
      __$$OrderPositionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String configName,
      String configId,
      String cocktailId,
      double price});
}

/// @nodoc
class __$$OrderPositionImplCopyWithImpl<$Res>
    extends _$OrderPositionCopyWithImpl<$Res, _$OrderPositionImpl>
    implements _$$OrderPositionImplCopyWith<$Res> {
  __$$OrderPositionImplCopyWithImpl(
      _$OrderPositionImpl _value, $Res Function(_$OrderPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPosition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? configName = null,
    Object? configId = null,
    Object? cocktailId = null,
    Object? price = null,
  }) {
    return _then(_$OrderPositionImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      configName: null == configName
          ? _value.configName
          : configName // ignore: cast_nullable_to_non_nullable
              as String,
      configId: null == configId
          ? _value.configId
          : configId // ignore: cast_nullable_to_non_nullable
              as String,
      cocktailId: null == cocktailId
          ? _value.cocktailId
          : cocktailId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPositionImpl implements _OrderPosition {
  _$OrderPositionImpl(
      {required this.index,
      required this.configName,
      required this.configId,
      required this.cocktailId,
      required this.price});

  factory _$OrderPositionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPositionImplFromJson(json);

  @override
  final int index;
  @override
  final String configName;
  @override
  final String configId;
  @override
  final String cocktailId;
  @override
  final double price;

  @override
  String toString() {
    return 'OrderPosition(index: $index, configName: $configName, configId: $configId, cocktailId: $cocktailId, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPositionImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.configName, configName) ||
                other.configName == configName) &&
            (identical(other.configId, configId) ||
                other.configId == configId) &&
            (identical(other.cocktailId, cocktailId) ||
                other.cocktailId == cocktailId) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, index, configName, configId, cocktailId, price);

  /// Create a copy of OrderPosition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPositionImplCopyWith<_$OrderPositionImpl> get copyWith =>
      __$$OrderPositionImplCopyWithImpl<_$OrderPositionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPositionImplToJson(
      this,
    );
  }
}

abstract class _OrderPosition implements OrderPosition {
  factory _OrderPosition(
      {required final int index,
      required final String configName,
      required final String configId,
      required final String cocktailId,
      required final double price}) = _$OrderPositionImpl;

  factory _OrderPosition.fromJson(Map<String, dynamic> json) =
      _$OrderPositionImpl.fromJson;

  @override
  int get index;
  @override
  String get configName;
  @override
  String get configId;
  @override
  String get cocktailId;
  @override
  double get price;

  /// Create a copy of OrderPosition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPositionImplCopyWith<_$OrderPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
