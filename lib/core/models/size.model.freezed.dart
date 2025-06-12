// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'size.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Size _$SizeFromJson(Map<String, dynamic> json) {
  return _Size.fromJson(json);
}

/// @nodoc
mixin _$Size {
  int get id => throw _privateConstructorUsedError;
  int get metricSize => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get maxBases => throw _privateConstructorUsedError;
  int get maxIngredients => throw _privateConstructorUsedError;
  int get maxGarnishes => throw _privateConstructorUsedError;

  /// Serializes this Size to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Size
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SizeCopyWith<Size> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeCopyWith<$Res> {
  factory $SizeCopyWith(Size value, $Res Function(Size) then) =
      _$SizeCopyWithImpl<$Res, Size>;
  @useResult
  $Res call(
      {int id,
      int metricSize,
      String name,
      int maxBases,
      int maxIngredients,
      int maxGarnishes});
}

/// @nodoc
class _$SizeCopyWithImpl<$Res, $Val extends Size>
    implements $SizeCopyWith<$Res> {
  _$SizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Size
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? metricSize = null,
    Object? name = null,
    Object? maxBases = null,
    Object? maxIngredients = null,
    Object? maxGarnishes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      metricSize: null == metricSize
          ? _value.metricSize
          : metricSize // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      maxBases: null == maxBases
          ? _value.maxBases
          : maxBases // ignore: cast_nullable_to_non_nullable
              as int,
      maxIngredients: null == maxIngredients
          ? _value.maxIngredients
          : maxIngredients // ignore: cast_nullable_to_non_nullable
              as int,
      maxGarnishes: null == maxGarnishes
          ? _value.maxGarnishes
          : maxGarnishes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizeImplCopyWith<$Res> implements $SizeCopyWith<$Res> {
  factory _$$SizeImplCopyWith(
          _$SizeImpl value, $Res Function(_$SizeImpl) then) =
      __$$SizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int metricSize,
      String name,
      int maxBases,
      int maxIngredients,
      int maxGarnishes});
}

/// @nodoc
class __$$SizeImplCopyWithImpl<$Res>
    extends _$SizeCopyWithImpl<$Res, _$SizeImpl>
    implements _$$SizeImplCopyWith<$Res> {
  __$$SizeImplCopyWithImpl(_$SizeImpl _value, $Res Function(_$SizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Size
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? metricSize = null,
    Object? name = null,
    Object? maxBases = null,
    Object? maxIngredients = null,
    Object? maxGarnishes = null,
  }) {
    return _then(_$SizeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      metricSize: null == metricSize
          ? _value.metricSize
          : metricSize // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      maxBases: null == maxBases
          ? _value.maxBases
          : maxBases // ignore: cast_nullable_to_non_nullable
              as int,
      maxIngredients: null == maxIngredients
          ? _value.maxIngredients
          : maxIngredients // ignore: cast_nullable_to_non_nullable
              as int,
      maxGarnishes: null == maxGarnishes
          ? _value.maxGarnishes
          : maxGarnishes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SizeImpl implements _Size {
  _$SizeImpl(
      {required this.id,
      required this.metricSize,
      required this.name,
      required this.maxBases,
      required this.maxIngredients,
      required this.maxGarnishes});

  factory _$SizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeImplFromJson(json);

  @override
  final int id;
  @override
  final int metricSize;
  @override
  final String name;
  @override
  final int maxBases;
  @override
  final int maxIngredients;
  @override
  final int maxGarnishes;

  @override
  String toString() {
    return 'Size(id: $id, metricSize: $metricSize, name: $name, maxBases: $maxBases, maxIngredients: $maxIngredients, maxGarnishes: $maxGarnishes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.metricSize, metricSize) ||
                other.metricSize == metricSize) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.maxBases, maxBases) ||
                other.maxBases == maxBases) &&
            (identical(other.maxIngredients, maxIngredients) ||
                other.maxIngredients == maxIngredients) &&
            (identical(other.maxGarnishes, maxGarnishes) ||
                other.maxGarnishes == maxGarnishes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, metricSize, name, maxBases,
      maxIngredients, maxGarnishes);

  /// Create a copy of Size
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeImplCopyWith<_$SizeImpl> get copyWith =>
      __$$SizeImplCopyWithImpl<_$SizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeImplToJson(
      this,
    );
  }
}

abstract class _Size implements Size {
  factory _Size(
      {required final int id,
      required final int metricSize,
      required final String name,
      required final int maxBases,
      required final int maxIngredients,
      required final int maxGarnishes}) = _$SizeImpl;

  factory _Size.fromJson(Map<String, dynamic> json) = _$SizeImpl.fromJson;

  @override
  int get id;
  @override
  int get metricSize;
  @override
  String get name;
  @override
  int get maxBases;
  @override
  int get maxIngredients;
  @override
  int get maxGarnishes;

  /// Create a copy of Size
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizeImplCopyWith<_$SizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
