// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cocktails_viewmodel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CocktailsViewModelState {
  List<CocktailsOverviewConfiguration> get configurations =>
      throw _privateConstructorUsedError;
  List<CocktailsOverviewConfiguration> get filteredConfigurations =>
      throw _privateConstructorUsedError;
  bool get showBookmarkedOnly => throw _privateConstructorUsedError;

  /// Create a copy of CocktailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CocktailsViewModelStateCopyWith<CocktailsViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailsViewModelStateCopyWith<$Res> {
  factory $CocktailsViewModelStateCopyWith(CocktailsViewModelState value,
          $Res Function(CocktailsViewModelState) then) =
      _$CocktailsViewModelStateCopyWithImpl<$Res, CocktailsViewModelState>;
  @useResult
  $Res call(
      {List<CocktailsOverviewConfiguration> configurations,
      List<CocktailsOverviewConfiguration> filteredConfigurations,
      bool showBookmarkedOnly});
}

/// @nodoc
class _$CocktailsViewModelStateCopyWithImpl<$Res,
        $Val extends CocktailsViewModelState>
    implements $CocktailsViewModelStateCopyWith<$Res> {
  _$CocktailsViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CocktailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configurations = null,
    Object? filteredConfigurations = null,
    Object? showBookmarkedOnly = null,
  }) {
    return _then(_value.copyWith(
      configurations: null == configurations
          ? _value.configurations
          : configurations // ignore: cast_nullable_to_non_nullable
              as List<CocktailsOverviewConfiguration>,
      filteredConfigurations: null == filteredConfigurations
          ? _value.filteredConfigurations
          : filteredConfigurations // ignore: cast_nullable_to_non_nullable
              as List<CocktailsOverviewConfiguration>,
      showBookmarkedOnly: null == showBookmarkedOnly
          ? _value.showBookmarkedOnly
          : showBookmarkedOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CocktailsViewModelStateImplCopyWith<$Res>
    implements $CocktailsViewModelStateCopyWith<$Res> {
  factory _$$CocktailsViewModelStateImplCopyWith(
          _$CocktailsViewModelStateImpl value,
          $Res Function(_$CocktailsViewModelStateImpl) then) =
      __$$CocktailsViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CocktailsOverviewConfiguration> configurations,
      List<CocktailsOverviewConfiguration> filteredConfigurations,
      bool showBookmarkedOnly});
}

/// @nodoc
class __$$CocktailsViewModelStateImplCopyWithImpl<$Res>
    extends _$CocktailsViewModelStateCopyWithImpl<$Res,
        _$CocktailsViewModelStateImpl>
    implements _$$CocktailsViewModelStateImplCopyWith<$Res> {
  __$$CocktailsViewModelStateImplCopyWithImpl(
      _$CocktailsViewModelStateImpl _value,
      $Res Function(_$CocktailsViewModelStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CocktailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configurations = null,
    Object? filteredConfigurations = null,
    Object? showBookmarkedOnly = null,
  }) {
    return _then(_$CocktailsViewModelStateImpl(
      configurations: null == configurations
          ? _value._configurations
          : configurations // ignore: cast_nullable_to_non_nullable
              as List<CocktailsOverviewConfiguration>,
      filteredConfigurations: null == filteredConfigurations
          ? _value._filteredConfigurations
          : filteredConfigurations // ignore: cast_nullable_to_non_nullable
              as List<CocktailsOverviewConfiguration>,
      showBookmarkedOnly: null == showBookmarkedOnly
          ? _value.showBookmarkedOnly
          : showBookmarkedOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CocktailsViewModelStateImpl implements _CocktailsViewModelState {
  _$CocktailsViewModelStateImpl(
      {required final List<CocktailsOverviewConfiguration> configurations,
      required final List<CocktailsOverviewConfiguration>
          filteredConfigurations,
      this.showBookmarkedOnly = false})
      : _configurations = configurations,
        _filteredConfigurations = filteredConfigurations;

  final List<CocktailsOverviewConfiguration> _configurations;
  @override
  List<CocktailsOverviewConfiguration> get configurations {
    if (_configurations is EqualUnmodifiableListView) return _configurations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_configurations);
  }

  final List<CocktailsOverviewConfiguration> _filteredConfigurations;
  @override
  List<CocktailsOverviewConfiguration> get filteredConfigurations {
    if (_filteredConfigurations is EqualUnmodifiableListView)
      return _filteredConfigurations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredConfigurations);
  }

  @override
  @JsonKey()
  final bool showBookmarkedOnly;

  @override
  String toString() {
    return 'CocktailsViewModelState(configurations: $configurations, filteredConfigurations: $filteredConfigurations, showBookmarkedOnly: $showBookmarkedOnly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CocktailsViewModelStateImpl &&
            const DeepCollectionEquality()
                .equals(other._configurations, _configurations) &&
            const DeepCollectionEquality().equals(
                other._filteredConfigurations, _filteredConfigurations) &&
            (identical(other.showBookmarkedOnly, showBookmarkedOnly) ||
                other.showBookmarkedOnly == showBookmarkedOnly));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_configurations),
      const DeepCollectionEquality().hash(_filteredConfigurations),
      showBookmarkedOnly);

  /// Create a copy of CocktailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CocktailsViewModelStateImplCopyWith<_$CocktailsViewModelStateImpl>
      get copyWith => __$$CocktailsViewModelStateImplCopyWithImpl<
          _$CocktailsViewModelStateImpl>(this, _$identity);
}

abstract class _CocktailsViewModelState implements CocktailsViewModelState {
  factory _CocktailsViewModelState(
      {required final List<CocktailsOverviewConfiguration> configurations,
      required final List<CocktailsOverviewConfiguration>
          filteredConfigurations,
      final bool showBookmarkedOnly}) = _$CocktailsViewModelStateImpl;

  @override
  List<CocktailsOverviewConfiguration> get configurations;
  @override
  List<CocktailsOverviewConfiguration> get filteredConfigurations;
  @override
  bool get showBookmarkedOnly;

  /// Create a copy of CocktailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CocktailsViewModelStateImplCopyWith<_$CocktailsViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
