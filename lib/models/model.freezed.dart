// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SomeModel _$SomeModelFromJson(Map<String, dynamic> json) {
  return _SomeModel.fromJson(json);
}

/// @nodoc
mixin _$SomeModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SomeModelCopyWith<SomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SomeModelCopyWith<$Res> {
  factory $SomeModelCopyWith(SomeModel value, $Res Function(SomeModel) then) =
      _$SomeModelCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$SomeModelCopyWithImpl<$Res> implements $SomeModelCopyWith<$Res> {
  _$SomeModelCopyWithImpl(this._value, this._then);

  final SomeModel _value;
  // ignore: unused_field
  final $Res Function(SomeModel) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SomeModelCopyWith<$Res> implements $SomeModelCopyWith<$Res> {
  factory _$$_SomeModelCopyWith(
          _$_SomeModel value, $Res Function(_$_SomeModel) then) =
      __$$_SomeModelCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$_SomeModelCopyWithImpl<$Res> extends _$SomeModelCopyWithImpl<$Res>
    implements _$$_SomeModelCopyWith<$Res> {
  __$$_SomeModelCopyWithImpl(
      _$_SomeModel _value, $Res Function(_$_SomeModel) _then)
      : super(_value, (v) => _then(v as _$_SomeModel));

  @override
  _$_SomeModel get _value => super._value as _$_SomeModel;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_SomeModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SomeModel implements _SomeModel {
  const _$_SomeModel({required this.name});

  factory _$_SomeModel.fromJson(Map<String, dynamic> json) =>
      _$$_SomeModelFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'SomeModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SomeModel &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_SomeModelCopyWith<_$_SomeModel> get copyWith =>
      __$$_SomeModelCopyWithImpl<_$_SomeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SomeModelToJson(
      this,
    );
  }
}

abstract class _SomeModel implements SomeModel {
  const factory _SomeModel({required final String name}) = _$_SomeModel;

  factory _SomeModel.fromJson(Map<String, dynamic> json) =
      _$_SomeModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_SomeModelCopyWith<_$_SomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
