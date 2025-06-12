// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cocktail_details_viewmodel_state.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CocktailDetailsViewModelState {
  CocktailsOverviewConfiguration get configuration =>
      throw _privateConstructorUsedError;

  /// Create a copy of CocktailDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CocktailDetailsViewModelStateCopyWith<CocktailDetailsViewModelState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailDetailsViewModelStateCopyWith<$Res> {
  factory $CocktailDetailsViewModelStateCopyWith(
          CocktailDetailsViewModelState value,
          $Res Function(CocktailDetailsViewModelState) then) =
      _$CocktailDetailsViewModelStateCopyWithImpl<$Res,
          CocktailDetailsViewModelState>;
  @useResult
  $Res call({CocktailsOverviewConfiguration configuration});

  $CocktailsOverviewConfigurationCopyWith<$Res> get configuration;
}

/// @nodoc
class _$CocktailDetailsViewModelStateCopyWithImpl<$Res,
        $Val extends CocktailDetailsViewModelState>
    implements $CocktailDetailsViewModelStateCopyWith<$Res> {
  _$CocktailDetailsViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CocktailDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configuration = null,
  }) {
    return _then(_value.copyWith(
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as CocktailsOverviewConfiguration,
    ) as $Val);
  }

  /// Create a copy of CocktailDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CocktailsOverviewConfigurationCopyWith<$Res> get configuration {
    return $CocktailsOverviewConfigurationCopyWith<$Res>(_value.configuration,
        (value) {
      return _then(_value.copyWith(configuration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CocktailDetailsViewModelStateImplCopyWith<$Res>
    implements $CocktailDetailsViewModelStateCopyWith<$Res> {
  factory _$$CocktailDetailsViewModelStateImplCopyWith(
          _$CocktailDetailsViewModelStateImpl value,
          $Res Function(_$CocktailDetailsViewModelStateImpl) then) =
      __$$CocktailDetailsViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CocktailsOverviewConfiguration configuration});

  @override
  $CocktailsOverviewConfigurationCopyWith<$Res> get configuration;
}

/// @nodoc
class __$$CocktailDetailsViewModelStateImplCopyWithImpl<$Res>
    extends _$CocktailDetailsViewModelStateCopyWithImpl<$Res,
        _$CocktailDetailsViewModelStateImpl>
    implements _$$CocktailDetailsViewModelStateImplCopyWith<$Res> {
  __$$CocktailDetailsViewModelStateImplCopyWithImpl(
      _$CocktailDetailsViewModelStateImpl _value,
      $Res Function(_$CocktailDetailsViewModelStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CocktailDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configuration = null,
  }) {
    return _then(_$CocktailDetailsViewModelStateImpl(
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as CocktailsOverviewConfiguration,
    ));
  }
}

/// @nodoc

class _$CocktailDetailsViewModelStateImpl
    implements _CocktailDetailsViewModelState {
  _$CocktailDetailsViewModelStateImpl({required this.configuration});

  @override
  final CocktailsOverviewConfiguration configuration;

  @override
  String toString() {
    return 'CocktailDetailsViewModelState(configuration: $configuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CocktailDetailsViewModelStateImpl &&
            (identical(other.configuration, configuration) ||
                other.configuration == configuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, configuration);

  /// Create a copy of CocktailDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CocktailDetailsViewModelStateImplCopyWith<
          _$CocktailDetailsViewModelStateImpl>
      get copyWith => __$$CocktailDetailsViewModelStateImplCopyWithImpl<
          _$CocktailDetailsViewModelStateImpl>(this, _$identity);
}

abstract class _CocktailDetailsViewModelState
    implements CocktailDetailsViewModelState {
  factory _CocktailDetailsViewModelState(
          {required final CocktailsOverviewConfiguration configuration}) =
      _$CocktailDetailsViewModelStateImpl;

  @override
  CocktailsOverviewConfiguration get configuration;

  /// Create a copy of CocktailDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CocktailDetailsViewModelStateImplCopyWith<
          _$CocktailDetailsViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
