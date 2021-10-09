// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'money_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoneyModel _$MoneyModelFromJson(Map<String, dynamic> json) {
  return _MoneyModel.fromJson(json);
}

/// @nodoc
class _$MoneyModelTearOff {
  const _$MoneyModelTearOff();

  _MoneyModel call(
      {String? belong,
      String? id,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String? amount,
      String? note,
      String? category,
      String? create}) {
    return _MoneyModel(
      belong: belong,
      id: id,
      updatedAt: updatedAt,
      amount: amount,
      note: note,
      category: category,
      create: create,
    );
  }

  MoneyModel fromJson(Map<String, Object?> json) {
    return MoneyModel.fromJson(json);
  }
}

/// @nodoc
const $MoneyModel = _$MoneyModelTearOff();

/// @nodoc
mixin _$MoneyModel {
  String? get belong => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get create => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoneyModelCopyWith<MoneyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyModelCopyWith<$Res> {
  factory $MoneyModelCopyWith(
          MoneyModel value, $Res Function(MoneyModel) then) =
      _$MoneyModelCopyWithImpl<$Res>;
  $Res call(
      {String? belong,
      String? id,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String? amount,
      String? note,
      String? category,
      String? create});
}

/// @nodoc
class _$MoneyModelCopyWithImpl<$Res> implements $MoneyModelCopyWith<$Res> {
  _$MoneyModelCopyWithImpl(this._value, this._then);

  final MoneyModel _value;
  // ignore: unused_field
  final $Res Function(MoneyModel) _then;

  @override
  $Res call({
    Object? belong = freezed,
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? amount = freezed,
    Object? note = freezed,
    Object? category = freezed,
    Object? create = freezed,
  }) {
    return _then(_value.copyWith(
      belong: belong == freezed
          ? _value.belong
          : belong // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      create: create == freezed
          ? _value.create
          : create // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MoneyModelCopyWith<$Res> implements $MoneyModelCopyWith<$Res> {
  factory _$MoneyModelCopyWith(
          _MoneyModel value, $Res Function(_MoneyModel) then) =
      __$MoneyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? belong,
      String? id,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String? amount,
      String? note,
      String? category,
      String? create});
}

/// @nodoc
class __$MoneyModelCopyWithImpl<$Res> extends _$MoneyModelCopyWithImpl<$Res>
    implements _$MoneyModelCopyWith<$Res> {
  __$MoneyModelCopyWithImpl(
      _MoneyModel _value, $Res Function(_MoneyModel) _then)
      : super(_value, (v) => _then(v as _MoneyModel));

  @override
  _MoneyModel get _value => super._value as _MoneyModel;

  @override
  $Res call({
    Object? belong = freezed,
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? amount = freezed,
    Object? note = freezed,
    Object? category = freezed,
    Object? create = freezed,
  }) {
    return _then(_MoneyModel(
      belong: belong == freezed
          ? _value.belong
          : belong // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      create: create == freezed
          ? _value.create
          : create // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoneyModel implements _MoneyModel {
  _$_MoneyModel(
      {this.belong,
      this.id,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.amount,
      this.note,
      this.category,
      this.create});

  factory _$_MoneyModel.fromJson(Map<String, dynamic> json) =>
      _$$_MoneyModelFromJson(json);

  @override
  final String? belong;
  @override
  final String? id;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final String? amount;
  @override
  final String? note;
  @override
  final String? category;
  @override
  final String? create;

  @override
  String toString() {
    return 'MoneyModel(belong: $belong, id: $id, updatedAt: $updatedAt, amount: $amount, note: $note, category: $category, create: $create)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoneyModel &&
            (identical(other.belong, belong) || other.belong == belong) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.create, create) || other.create == create));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, belong, id, updatedAt, amount, note, category, create);

  @JsonKey(ignore: true)
  @override
  _$MoneyModelCopyWith<_MoneyModel> get copyWith =>
      __$MoneyModelCopyWithImpl<_MoneyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoneyModelToJson(this);
  }
}

abstract class _MoneyModel implements MoneyModel {
  factory _MoneyModel(
      {String? belong,
      String? id,
      @JsonKey(name: 'updated_at') String? updatedAt,
      String? amount,
      String? note,
      String? category,
      String? create}) = _$_MoneyModel;

  factory _MoneyModel.fromJson(Map<String, dynamic> json) =
      _$_MoneyModel.fromJson;

  @override
  String? get belong;
  @override
  String? get id;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  String? get amount;
  @override
  String? get note;
  @override
  String? get category;
  @override
  String? get create;
  @override
  @JsonKey(ignore: true)
  _$MoneyModelCopyWith<_MoneyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
